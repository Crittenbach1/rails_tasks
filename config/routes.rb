Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks", registrations: 'registrations' }

  root to: "tasks#index"
  resources :group_tasks, :users, :tasks



end

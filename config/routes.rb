Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks", registrations: 'registrations' }

  root to: "tasks#index"

  resources :group_tasks

  resource :tasks, only: [:index, :edit, :update]

end

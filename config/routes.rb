Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks", registrations: 'registrations' }

  root to: "tasks#index"
  resources :group_tasks, :users, :tasks

  resources :group_tasks, only: [:show] do
    resources :tasks, only: [:new, :create]
  end

end

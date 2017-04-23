Rails.application.routes.draw do

  devise_for :admins
  root controller: :index, action: :index

  resources :news, only: [:new, :create]

  resources :workorders, only: [:new, :create, :index, :edit, :update]
  resources :help_requests, only: [:index]
  resources :facilities, only: [:new, :create]

  namespace :api do
    namespace :v1 do
      resources :news, only: [:index], defaults: { format: 'json' }
      resources :facilities, only: [:index], defaults: { format: 'json'}
      resources :help_requests, only: [:create], defaults: { format: 'json' }
    end
  end
end

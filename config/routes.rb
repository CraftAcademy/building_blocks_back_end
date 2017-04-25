Rails.application.routes.draw do

  resources :events
  devise_for :admins
  root controller: :index, action: :index
  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  devise_scope :user do
    authenticated :user do
      root to: 'index#index'
    end
    unauthenticated :user do
      root to: 'devise/registrations#new', as: :unauthenticated_root
    end
  end


  resources :news, only: [:new, :create]

  resources :workorders, only: [:new, :create, :index, :update]
  resources :help_requests, only: [:index]
  resources :facilities, only: [:new, :create]

  namespace :api do
    namespace :v1 do
      mount_devise_token_auth_for 'User', at: 'auth', controllers: {
        registrations: 'api/v1/registrations'
      }
      resources :news, only: [:index], defaults: { format: 'json' }
      resources :facilities, only: [:index], defaults: { format: 'json'}
      resources :help_requests, only: [:create], defaults: { format: 'json' }
    end
  end
end

Rails.application.routes.draw do

  resources :news, only: [:new, :create]

  resources :help_requests, only: [:index]
  resources :facilitie only: [:new, :create]

  namespace :api do
    namespace :v1 do
      resources :news, only: [:index], defaults: { format: 'json' }
      resources :facilities, only: [:index], defaults: { format: 'json'}
      resources :help_requests, only: [:create], defaults: { format: 'json' }
    end
  end
end

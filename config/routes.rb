Rails.application.routes.draw do

  resources :news, only: [:new, :create]

  namespace :api do
    namespace :v1 do
      resources :news, only: [:index], defaults: { format: 'json' }
    end
  end
end

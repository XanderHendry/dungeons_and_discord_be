Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      # resources :charclasses, only: [:index, :show]
      get '/charclasses/:index', to: 'charclasses#show'
      resources :characters, only: [:index, :create]
    end
  end
end

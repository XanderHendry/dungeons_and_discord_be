Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      # resources :charclasses, only: [:index, :show]
      get '/charclasses/:index', to: 'charclasses#show'
      post '/charclasses/add_prof', to: 'charclasses#add_prof'
      post '/charclasses/add_items', to: 'charclasses#add_items'
      post '/charclasses/add_stats', to: 'charclasses#add_stats'
      resources :characters, only: [:index, :create]
    end
  end
end

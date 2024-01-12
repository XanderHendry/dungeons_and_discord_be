Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      # resources :charclasses, only: [:index, :show]
      get '/charclasses/:index', to: 'charclasses#show'
      post '/charclasses/:char_id/add_prof', to: 'charclasses#add_prof'
      post '/charclasses/:char_id/add_items', to: 'charclasses#add_items'
      post '/charclasses/:char_id/add_stats', to: 'charclasses#add_stats'
      get '/equipment/:category', to: 'equipment#index'
      resources :characters, only: [:index, :create, :show, :destroy]
    end
  end
end

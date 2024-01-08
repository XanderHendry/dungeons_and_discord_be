Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :charclasses, only: [:index, :show]
      resources :character, only: [:index, :create]
    end
  end
end

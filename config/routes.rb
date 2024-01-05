Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :charclasses, only: [:index]
    end
  end
end

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :search_animal, only:[:index]
      resources :users, only: [:index, :create]
      get '/dashboard',to: 'dashboard#show'
      resources :animals, only: [:index, :show]
    end
  end
end

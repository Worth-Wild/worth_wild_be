Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :search_animal, only:[:index]
      resources :users, only: [:index, :create]
      resources :favorites, only: [:create]
      resources :animal_of_the_day, only: [:index]
      get '/dashboard',to: 'dashboard#show'
      resources :animals, only: [:index]
      get '/animal',to: 'animals#show'

    end
  end
end

Rails.application.routes.draw do
  resources :candies
  resources :shelves
  resources :shops
  root 'shops#index'
  get '/shops/:id', to: 'shops#show', as:'unshelved_candies'
  get "/candy/remove/:id" , to: "candies#remove", as: 'remove_candy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

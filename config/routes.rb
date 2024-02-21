Rails.application.routes.draw do
  get 'places/index'
  get 'places/show'
  get 'places/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :places #Route for places controller
  root 'places#index'
end

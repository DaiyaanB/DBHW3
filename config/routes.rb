Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :places #Route for places controller
  root 'places#index'
  
  # Defines the root path route ("/")
  # get("/", { :controller => "articles", :action => "index" })
end

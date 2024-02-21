Rails.application.routes.draw do #Worked with GPT to figure out the 'nesting' needed for Part II
  root 'places#index'
  resources :places do
    resources :entries, only: [:new, :create]
  end
end

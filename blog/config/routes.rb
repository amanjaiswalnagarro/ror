Rails.application.routes.draw do
  # get 'cards/index'
  # get 'cards/show'
  # get 'cards/edit'
  # get 'cards/new'
  resources :cards
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

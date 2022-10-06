Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :bookmarks, only: [:destroy]
  resources :lists, only: [:new, :create, :show, :index, :destroy] do
    resources :bookmarks, only: [:new, :create]
  end
end
  # Defines the root path route ("/")
  # root "articles#index"

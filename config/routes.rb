Rails.application.routes.draw do
  get 'bookmarks/new'
  # get 'lists/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :lists, only: [:index, :show, :new, :create]

  resources :lists do
    resources :bookmarks, only: [:new, :create]
  end

end

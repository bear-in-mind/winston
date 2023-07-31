Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "shows#index"
  resources :shows, only: [:index, :show] do
    resources :song_attributes, only: [:create, :destroy]
    resources :songs, only: [:create]
  end
  resources :songs, only: [:update, :destroy] do
    resources :cells, only: [:create]
  end
  resources :cells, only: [:update, :destroy]
end

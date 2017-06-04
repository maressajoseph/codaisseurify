Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'

  get "about" => "pages#about"
  get "contact" => "pages#contact"

  resources :artists, only: [:index, :show, :destroy] do
    resources :songs, only: [:new, :create, :destroy]
    delete "destroy_all", to: "songs#destroy_all", as: :song_destroy_all
  end
  resources :photos
end

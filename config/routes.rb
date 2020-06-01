Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'images#new'
  resources :playgames, only: [:create, :index]
  resources :images, only: [:new, :create, :index]
end

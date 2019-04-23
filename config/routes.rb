Rails.application.routes.draw do
  devise_for :users, path: "/"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/", to: "pages#home", as: "root"
  resources :listings
end

Rails.application.routes.draw do
  get '/users', to:'allusers#index'
  devise_for :users
  resources :rooms do
    resources :comments
  end


  resources :profile, only: [:edit, :update, :show]
  


  root "home#index"
end

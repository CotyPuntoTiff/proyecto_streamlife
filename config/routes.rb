Rails.application.routes.draw do
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # get "profile/:id", to: 

  root "posts#index" 
  resources :coments
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # devise_for :users, controllers: {
  #   sessions: 'users/sessions'
  # }
end

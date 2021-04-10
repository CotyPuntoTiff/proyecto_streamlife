Rails.application.routes.draw do
  # get "profile/:id", to: 

  root "post#index" 
  resources :coments
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
end

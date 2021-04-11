Rails.application.routes.draw do
  devise_for :admins, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # get "profile/:id", to: 

  root "posts#index" 
  resources :coments
  resources :posts
  resources :users, only: :show do 
    get :posts  
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: {
    sessions: 'user/sessions', 
    # registrations: "user/registrations"
  }
end

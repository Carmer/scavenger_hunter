Rails.application.routes.draw do
  root 'home#index'
  devise_for :users, controllers: { sessions: "users/sessions" }

  resources :locations
  resources :hunts do
    resources :teams
  end
end

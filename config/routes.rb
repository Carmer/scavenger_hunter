Rails.application.routes.draw do
  root 'home#index'
  devise_for :users, controllers: { sessions: "users/sessions" }

  resources :locations
  resources :hunts do
    resources :activations, only: [:new, :create, :destroy],
                            path_names: { new: 'activate', destroy: 'deactivate'}
    resources :teams
  end
end

Rails.application.routes.draw do
  resources :profiles do
    collection do
      # post :make_admin
      post :assign_role
      post :revoke_role
    end
  end

  resources :companies
  resources :talents
  devise_for :users
  # post 'assign_role', to: 'profiles/assign_role'
  get 'home/index'
  root 'home#index'
  #
  # get 'admin', to: 'pages#admin'
  # get 'contact', to: 'pages#contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :talents
  resources :profiles
  devise_for :users

  get 'home/index'
  root 'home#index'
  get 'admin', to: 'pages#admin'
  get 'contact', to: 'pages#contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

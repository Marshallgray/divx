Rails.application.routes.draw do
  resources :talents
  get 'home/index'

  resources :profiles
  devise_for :users

  root 'home#index'
  get 'admin', to: 'pages#admin'
  get 'contact', to: 'pages#contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

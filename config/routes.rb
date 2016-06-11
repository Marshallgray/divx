Rails.application.routes.draw do
  get 'admin', to: 'pages#admin'
  get 'contact', to: 'pages#contact'
  root 'pages#home'
  get 'pages/home'

  get 'pages/admin'

  get 'pages/contact'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

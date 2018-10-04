Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'pages/design', to: 'pages#design'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :contacts
end

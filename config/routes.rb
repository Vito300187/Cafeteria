Rails.application.routes.draw do
  resources :items
  resources :users
  resources :orders, except: :destroy  # Заказы должны оставаться в базе данных
  devise_for :users
  root 'users#login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
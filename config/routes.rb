Rails.application.routes.draw do
  devise_for :users
  root "users#new"
  resources :items #only: [:index, :show]
  resources :users #except: [:index]
  resources :orders, except: [:destroy]  # Заказы должны оставаться в базе данных
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  namespace :admin do
    resources :items
    resources :users, only: [:index, :show, :edit]
    resources :orders
  end
end
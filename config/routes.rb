Rails.application.routes.draw do
  resources :transactions
  devise_for :users
  get 'transactions/new'
  get 'transactions/show'
  get 'transactions/edit'
  get 'user/index'
  get 'user/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

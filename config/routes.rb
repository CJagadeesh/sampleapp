Rails.application.routes.draw do
  resources :transactions do 
  	get :download_pdf, on: :collection
  end
  devise_for :users
  root to: 'transactions#index'
  get 'transactions/new'
  get 'transactions/show'
  get 'transactions/edit'
  get 'user/index'
  get 'user/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

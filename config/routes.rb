Rails.application.routes.draw do
  resources :holdings
  resources :transactions
  devise_for :users
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'holdings#index'

  # redirects all unknown routes back to to root
  get '*path' => redirect('/')

end

Rails.application.routes.draw do
  devise_for :admins
  resources :products do
      get 'search', on: :collection
  end
  namespace :admin do
      resources :products
  end
  root :to => 'products#index'
  get 'products/:id/purchase', to: 'products#purchase', as: :purchase_product
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do

  resources :line_items
  resources :shopping_carts
#  get 'products/index'

#  get 'products/new'

#  get 'products/edit'

#  get 'products/show'

#  get 'products/delete'
   root 'store#index', as: 'store_index'
   resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

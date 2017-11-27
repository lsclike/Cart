Rails.application.routes.draw do
#  get 'products/index'

#  get 'products/new'

#  get 'products/edit'

#  get 'products/show'

#  get 'products/delete'
	
   root 'products#index'
   resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

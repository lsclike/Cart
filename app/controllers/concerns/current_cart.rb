module CurrentCart
   private
     
     def set_cart
       @cart = ShoppingCart.find(session[:shoppingcart_id])
     rescue ActiveRecord::RecordNotFound
       @cart = ShoppingCart.create
       session[:shoppingcart_id] = @cart.id
     end
end

class StoreController < ApplicationController
  skip_before_filter :authorize

  def index
    @products  = Product.all
    @cart = current_cart
  end

  def increment_counter
  	if session[:counter].nil?
      session[:counter] = 0
    end
  	  session[:counter] += 1
	end
end

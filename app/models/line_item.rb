class LineItem < ActiveRecord::Base
	belongs_to :order
	belongs_to :product
	belongs_to :cart

	def total_price
		1
		# product.price * quantity
	end
end

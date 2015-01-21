class CombineItemsInCart < ActiveRecord::Migration
	def self.down
		ListItem.where("qunatity>1").each do |line_item|
			line_item.quantity.times do
				LineItem.create :cart_id => line_item.cart_id,
					:product_id => line_item.product_id, quantity => 1
			end
			line_item.destroy
		end
	end
  def change
  end
end

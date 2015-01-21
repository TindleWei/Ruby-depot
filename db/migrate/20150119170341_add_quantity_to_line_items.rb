class AddQuantityToLineItems < ActiveRecord::Migration
  def self.up
  	add_colum :line_items, :quantity, :integer, :default => 1
  end

  def self.down
  	remove_colum :line_items, :quantity
  end

  def change
    add_column :line_items, :quantity, :integer
  end
end

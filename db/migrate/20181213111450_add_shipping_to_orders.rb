class AddShippingToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :shipping, :float
  end
end

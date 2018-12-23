class AddSubtotalToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :subtotal, :float
  end
end

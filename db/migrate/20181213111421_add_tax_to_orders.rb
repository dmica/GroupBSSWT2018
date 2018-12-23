class AddTaxToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :tax, :float
  end
end

class DropPhones < ActiveRecord::Migration[5.2]
  def change
    drop_table :phones
  end
end

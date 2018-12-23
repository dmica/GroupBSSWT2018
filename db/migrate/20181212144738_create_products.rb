class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :model
      t.decimal :price
      t.string :camera
      t.string :dimensions
      t.text :description

      t.timestamps
    end
  end
end

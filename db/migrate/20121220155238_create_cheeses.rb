class CreateCheeses < ActiveRecord::Migration
  def change
    create_table :cheeses do |t|
      t.integer :id
      t.integer :product_id
      t.string :time
      t.string :price

      t.timestamps
    end
  end
end

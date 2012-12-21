class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :id
      t.string :gname
      t.string :siteid
      t.string :name
      t.string :company
      t.string :note

      t.timestamps
    end
  end
end

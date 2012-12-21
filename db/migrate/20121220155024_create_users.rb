class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :id
      t.string :name
      t.string :email
      t.string :password
      t.string :encrypted_password
      t.boolean :admin
      t.boolean :banned
      t.string :salt

      t.timestamps
    end
  end
end

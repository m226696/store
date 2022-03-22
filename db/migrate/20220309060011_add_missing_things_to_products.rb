class AddMissingThingsToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :seller, :string
    add_column :products, :status, :string
    add_column :products, :quantity, :numeric
    add_index :products, :quantity
    add_column :products, :available, :decimal
    add_index :products, :available
    add_column :products, :amount, :string
    add_column :products, :left, :integer
    add_index :products, :left
  end
end

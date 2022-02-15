class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.numeric :price
      t.integer :stock

      t.timestamps
    end
  end
end

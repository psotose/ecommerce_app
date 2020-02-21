class CreateStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks do |t|
      t.boolean :stock
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end

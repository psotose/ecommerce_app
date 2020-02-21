class CreateColors < ActiveRecord::Migration[5.2]
  def change
    create_table :colors do |t|
      t.string :color
      t.references :stock, foreign_key: true

      t.timestamps
    end
  end
end

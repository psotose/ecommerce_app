class CreatePaymentMethods < ActiveRecord::Migration[5.2]
  def change
    create_table :payment_methods do |t|
      t.string :payment_method
      t.references :payment, foreign_key: true

      t.timestamps
    end
  end
end

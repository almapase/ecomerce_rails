class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :code
      t.string :payment_method
      t.string :amount
      t.string :currency

      t.timestamps null: false
    end
  end
end

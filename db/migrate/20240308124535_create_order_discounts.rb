class CreateOrderDiscounts < ActiveRecord::Migration[7.1]
  def change
    create_table :order_discounts do |t|
      t.string :order_number, null: false
      t.decimal :price, precision: 16, scale: 2, null: false

      t.timestamps default: -> { 'CURRENT_TIMESTAMP' }
    end
  end
end

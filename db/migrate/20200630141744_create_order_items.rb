class CreateOrderItems < ActiveRecord::Migration[6.0]
  def change
    create_table :order_items do |t|
      t.integer :quantity, default: 0
      t.references :product, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true
      t.decimal :total, default: 0.0
      t.decimal :unit_price, default: 0.0

      t.timestamps
    end
  end
end

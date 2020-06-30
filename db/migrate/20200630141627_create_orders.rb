class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.decimal :subtotal, default: 0.0
      t.decimal :total,    default: 0.0

      t.timestamps
    end
  end
end

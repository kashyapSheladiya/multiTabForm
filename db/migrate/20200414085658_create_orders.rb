class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :shipping_name
      t.integer :billing_name

      t.timestamps
    end
  end
end

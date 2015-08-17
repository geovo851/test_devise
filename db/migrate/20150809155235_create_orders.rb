class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :product
      t.float :quantity

      t.timestamps null: false
    end
  end
end

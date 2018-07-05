class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.decimal :price, precision: 10, scale: 2
      t.references :users, foreign_key: true
      t.references :situations, foreign_key: true

      t.timestamps
    end
  end
end

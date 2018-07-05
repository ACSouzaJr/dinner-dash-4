class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.string :name
      t.text :description
      t.decimal :price, precision: 10, scale: 2
      t.string :image
      t.boolean :available
      t.references :meal_categories, foreign_key: true

      t.timestamps
    end
  end
end

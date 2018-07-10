class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.string :name
      t.references :categorium, foreign_key: true
      t.string :description
      t.string :price
      t.string :available

      t.timestamps
    end
  end
end

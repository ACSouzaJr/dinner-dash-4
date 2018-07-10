class CreateCategoria < ActiveRecord::Migration[5.2]
  def change
    create_table :categoria do |t|
      t.string :nome
      t.integer :numero
      t.datetime :cadastrado

      t.timestamps
    end
  end
end

class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :nombre
      t.string :codigo
      t.integer :precio
      t.string :descripcion

      t.timestamps
    end
  end
end

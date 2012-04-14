class CreateLocals < ActiveRecord::Migration
  def change
    create_table :locals do |t|
      t.string :descripcion
      t.string :direccion
      t.string :direccion_google_maps
      t.integer :telefono
      t.integer :cliente_id
      t.integer :ciudad_id

      t.timestamps
    end
  end
end

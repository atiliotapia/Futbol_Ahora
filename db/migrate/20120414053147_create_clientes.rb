class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :apellido
      t.boolean :sexomasculino
      t.integer :numerodocumento_identidad
      t.date :fecha_nacimiento
      t.integer :celular
      t.integer :clientetipo_id
      t.integer :documentotipo_id

      t.timestamps
    end
  end
end

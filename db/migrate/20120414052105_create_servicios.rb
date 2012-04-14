class CreateServicios < ActiveRecord::Migration
  def change
    create_table :servicios do |t|
      t.boolean :tiposervicio
      t.string :descripcion
      t.integer :local_id
      t.integer :tarifa_diurna
      t.integer :tarifa_nocturna
      t.boolean :promocion

      t.timestamps
    end
  end
end

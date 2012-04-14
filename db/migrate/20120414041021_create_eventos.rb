class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.string :descripcion
      t.string :premio
      t.integer :cantidad_equipos
      t.date :fecha_inicio
      t.date :fecha_fin
      t.date :fecha_inscripcion
      t.integer :cliente_id

      t.timestamps
    end
  end
end

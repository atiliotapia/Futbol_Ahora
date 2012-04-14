class CreatePublicidads < ActiveRecord::Migration
  def change
    create_table :publicidads do |t|
      t.string :titulo
      t.text :contenido
      t.date :fecha_inicio
      t.date :fecha_final
      t.integer :numero_click
      t.integer :tarifa
      t.integer :clientetipo_id

      t.timestamps
    end
  end
end

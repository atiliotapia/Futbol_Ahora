class CreateReservaServicios < ActiveRecord::Migration
  def change
    create_table :reserva_servicios do |t|
      t.integer :reserva_id
      t.integer :servicio_id
      t.integer :hora
      t.integer :cantidad
      t.integer :precio_unitario
      t.integer :total

      t.timestamps
    end
  end
end

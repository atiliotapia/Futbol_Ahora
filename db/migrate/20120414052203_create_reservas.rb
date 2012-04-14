class CreateReservas < ActiveRecord::Migration
  def change
    create_table :reservas do |t|
      t.integer :cliente_id
      t.integer :local_id
      t.date :fecha_emision
      t.time :hora_inicio
      t.time :hora_final
      t.boolean :estado
      t.integer :validez_pre_reserva
      t.integer :total

      t.timestamps
    end
  end
end

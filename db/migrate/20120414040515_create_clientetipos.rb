class CreateClientetipos < ActiveRecord::Migration
  def change
    create_table :clientetipos do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end

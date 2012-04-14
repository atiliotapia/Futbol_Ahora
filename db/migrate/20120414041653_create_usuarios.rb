class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :correo
      t.string :clave
      t.integer :cliente_id

      t.timestamps
    end
  end
end

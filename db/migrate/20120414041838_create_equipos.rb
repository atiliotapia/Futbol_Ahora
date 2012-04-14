class CreateEquipos < ActiveRecord::Migration
  def change
    create_table :equipos do |t|
      t.integer :evento_id
      t.string :nombre
      t.integer :cliente_id

      t.timestamps
    end
  end
end

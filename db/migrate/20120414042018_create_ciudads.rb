class CreateCiudads < ActiveRecord::Migration
  def change
    create_table :ciudads do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end

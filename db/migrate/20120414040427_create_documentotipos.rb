class CreateDocumentotipos < ActiveRecord::Migration
  def change
    create_table :documentotipos do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end

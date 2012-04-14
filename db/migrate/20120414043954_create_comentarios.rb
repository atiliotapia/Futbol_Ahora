class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.text :comentario
      t.integer :calificacion
      t.integer :cliente_id
      t.boolean :visible

      t.timestamps
    end
  end
end

class CreateSolicituds < ActiveRecord::Migration[5.2]
  def change
    create_table :solicituds do |t|
      t.text :descripcion
      t.date :fecha_solicitud
      t.time :hora
      t.integer :idtipo_solicitud
      t.integer :id_usuario
      t.integer :id_documento

      t.timestamps
    end
  end
end

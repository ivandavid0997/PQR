class CreateTipoNotificaciones < ActiveRecord::Migration[5.2]
  def change
    create_table :tipo_notificaciones do |t|
      t.string :nombre
      t.string :descripcion
      t.string :icono

      t.timestamps
    end
  end
end

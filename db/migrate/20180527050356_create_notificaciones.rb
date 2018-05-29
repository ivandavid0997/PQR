class CreateNotificaciones < ActiveRecord::Migration[5.2]
  def change
    create_table :notificaciones do |t|
      t.text :mensaje
      t.datetime :fecha
      t.integer :id_tipo_notificacion

      t.timestamps
    end
  end
end

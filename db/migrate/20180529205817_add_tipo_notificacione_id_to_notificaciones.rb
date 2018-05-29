class AddTipoNotificacioneIdToNotificaciones < ActiveRecord::Migration[5.2]
  def change
    add_reference :notificaciones, :tipo_notificacione, foreign_key: true
  end
end

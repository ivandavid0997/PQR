class AddTipoSeguimientoIdToSeguimientos < ActiveRecord::Migration[5.2]
  def change
    add_reference :seguimientos, :tipo_seguimiento, foreign_key: true
  end
end

class CreateTipoSolicitudes < ActiveRecord::Migration[5.2]
  def change
    create_table :tipo_solicitudes do |t|
      t.string :nombre_tipo
      t.integer :id_parametros

      t.timestamps
    end
  end
end

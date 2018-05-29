class CreatePermisos < ActiveRecord::Migration[5.2]
  def change
    create_table :permisos do |t|
      t.string :tipo_permiso
      t.string :descripcion

      t.timestamps
    end
  end
end

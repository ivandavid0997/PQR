class CreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do |t|
      t.string :nombre_rol
      t.integer :id_area
      t.integer :id_usuario

      t.timestamps
    end
  end
end

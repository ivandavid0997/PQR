class CreateParametros < ActiveRecord::Migration[5.2]
  def change
    create_table :parametros do |t|
      t.string :nombre
      t.text :descripcion
      t.string :tiempo_respuesta
      t.string :medio

      t.timestamps
    end
  end
end

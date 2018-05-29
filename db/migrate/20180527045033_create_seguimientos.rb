class CreateSeguimientos < ActiveRecord::Migration[5.2]
  def change
    create_table :seguimientos do |t|
      t.text :descripcion
      t.date :fecha
      t.time :hora
      t.integer :id_tipo_seguimiento

      t.timestamps
    end
  end
end

class CreateAreas < ActiveRecord::Migration[5.2]
  def change
    create_table :areas do |t|
      t.string :nombre_area
      t.integer :telefono_area

      t.timestamps
    end
  end
end

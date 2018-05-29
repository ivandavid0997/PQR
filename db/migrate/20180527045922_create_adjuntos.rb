class CreateAdjuntos < ActiveRecord::Migration[5.2]
  def change
    create_table :adjuntos do |t|
      t.string :nombre
      t.string :extension

      t.timestamps
    end
  end
end

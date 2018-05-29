class AddAdjuntoIdToSolicituds < ActiveRecord::Migration[5.2]
  def change
    add_reference :solicituds, :adjunto, foreign_key: true
  end
end

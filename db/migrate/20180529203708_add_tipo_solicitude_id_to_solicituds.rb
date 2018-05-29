class AddTipoSolicitudeIdToSolicituds < ActiveRecord::Migration[5.2]
  def change
    add_reference :solicituds, :tipo_solicitude, foreign_key: true
  end
end

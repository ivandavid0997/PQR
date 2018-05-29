class AddLoginIdToSolicituds < ActiveRecord::Migration[5.2]
  def change
    add_reference :solicituds, :login, foreign_key: true
  end
end

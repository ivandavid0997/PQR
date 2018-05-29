class AddRoleIdToLogins < ActiveRecord::Migration[5.2]
  def change
    add_reference :logins, :role, foreign_key: true
  end
end

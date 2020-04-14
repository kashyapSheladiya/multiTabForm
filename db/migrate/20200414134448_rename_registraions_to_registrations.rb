class RenameRegistraionsToRegistrations < ActiveRecord::Migration[5.2]
  def change
    rename_table :registraions, :registrations
  end
end

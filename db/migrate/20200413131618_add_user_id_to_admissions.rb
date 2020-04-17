class AddUserIdToAdmissions < ActiveRecord::Migration[5.2]
  def change
    add_column :admissions, :user_id, :int, foreign_key: true
  end
end

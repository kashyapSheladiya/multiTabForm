class CreateAdmissions < ActiveRecord::Migration[5.2]
  def change
    create_table :admissions do |t|
      t.string :name
      t.date :dob
      t.string :gender
      t.string :email
      t.string :country
      t.string :address
      t.string :dadname
      t.string :momname
      t.string :dadoccupation
      t.string :momoccupation
      t.float :secmarks
      t.float :highsecmarks
      t.attachment :media_1
      t.attachment :media_2
      t.attachment :media_3
    end
  end
end

    
class CreateRegistraion < ActiveRecord::Migration[5.2]
  def change
    create_table :registraions do |t|
      t.string :country
      t.string :address
      t.string :name
      t.date :dob
      t.text :bio
      t.string :fb
      t.string :twitter
      t.string :Insta

      t.timestamps
    end
  end
end

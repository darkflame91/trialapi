class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :aadharno
      t.string :name
      t.string :email
      t.string :phone
      t.string :password_digest
      t.date :dob

      t.timestamps null: false
    end
  end
end

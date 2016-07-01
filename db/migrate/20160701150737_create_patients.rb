class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.references :user, index: true, foreign_key: true
      t.float :bmi

      t.timestamps null: false
    end
  end
end

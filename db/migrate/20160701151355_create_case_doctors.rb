class CreateCaseDoctors < ActiveRecord::Migration
  def change
    create_table :case_doctors do |t|
      t.references :case, index: true, foreign_key: true
      t.references :doctor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

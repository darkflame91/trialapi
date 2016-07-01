class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.references :user, index: true, foreign_key: true
      t.references :specialization, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

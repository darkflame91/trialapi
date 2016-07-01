class CreateCaseMedia < ActiveRecord::Migration
  def change
    create_table :case_media do |t|
      t.references :case, index: true, foreign_key: true
      t.references :mediatype, index: true, foreign_key: true
      t.string :mediacode
      t.has_attached_file :media

      t.timestamps null: false
    end
  end
end

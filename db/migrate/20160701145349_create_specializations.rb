class CreateSpecializations < ActiveRecord::Migration
  def change
    create_table :specializations do |t|
      t.string :type_name

      t.timestamps null: false
    end
  end
end

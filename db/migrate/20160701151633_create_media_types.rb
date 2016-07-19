class CreateMediaTypes < ActiveRecord::Migration
  def change
    create_table :media_types do |t|
      t.string :type_name

      t.timestamps null: false
    end
  end
end

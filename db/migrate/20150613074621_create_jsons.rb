class CreateJsons < ActiveRecord::Migration
  def change
    create_table :jsons do |t|
      t.string :type
      t.string :data

      t.timestamps null: false
    end
  end
end

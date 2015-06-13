class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.string :category
      t.string :postcode
      t.string :housename
      t.string :street
      t.string :town
      t.boolean :disabled_access
      t.string :email
      t.string :info

      t.timestamps null: false
    end
  end
end

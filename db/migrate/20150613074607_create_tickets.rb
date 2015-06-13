class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :user_id
      t.integer :event_id
      t.string :date

      t.timestamps null: false
    end
  end
end

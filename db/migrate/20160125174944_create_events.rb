class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :end_date
      t.integer :school_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

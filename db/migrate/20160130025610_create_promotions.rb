class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.integer :post_id
      t.datetime :paid_at
      t.string :reference

      t.timestamps null: false
    end
  end
end

class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :description
      t.integer :school_id
      t.integer :category_id
      t.float :price
      t.integer :category_post_id

      t.timestamps null: false
    end
  end
end

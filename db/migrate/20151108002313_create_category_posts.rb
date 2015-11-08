class CreateCategoryPosts < ActiveRecord::Migration
  def change
    create_table :category_posts do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end

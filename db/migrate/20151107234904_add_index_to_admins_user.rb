class AddIndexToAdminsUser < ActiveRecord::Migration
  def change
    add_index :admins, :user, unique: true
  end
end

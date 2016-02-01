class Post < ActiveRecord::Base
  belongs_to :category
  belongs_to :school
  belongs_to :category_post
  belongs_to :user
  belongs_to :event

  has_one :promotion

end

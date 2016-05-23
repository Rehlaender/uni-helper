class Event < ActiveRecord::Base
  belongs_to :school
  belongs_to :user
  has_many :posts
end

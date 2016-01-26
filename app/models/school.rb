class School < ActiveRecord::Base
  validates :name, presence: true,
                   length: { minimum: 2  }

  has_many :posts

  has_many :events
end

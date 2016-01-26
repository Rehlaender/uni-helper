class User < ActiveRecord::Base

  has_many :posts

  has_many :events

  validates :name, presence: true, length: { minimum: 3}

  validates :user, presence: true, length: { minimum: 3}, uniqueness: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :mail, presence: true, length: { maximum: 200},
            format: { with: VALID_EMAIL_REGEX },uniqueness:{ case_sensitive: false }

  validates :telephone, presence: true, length: {minimum: 6}

  has_secure_password

  validates :password, presence: true, length: { minimum: 6 }

end

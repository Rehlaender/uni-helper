class Admin < ActiveRecord::Base
  validates :user, presence: true, length: { minimum: 3}, uniqueness: true
  validates :name, presence: true, length: { minimum: 3}

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, presence: true, length: { maximum: 200},
            format: { with: VALID_EMAIL_REGEX },uniqueness:{ case_sensitive: false }

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }

end

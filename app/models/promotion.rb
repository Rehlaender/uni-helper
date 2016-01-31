class Promotion < ActiveRecord::Base
  belongs_to :post

  validates :reference, :uniqueness => true
  
end

class User < ActiveRecord::Base
  validates :username, presence: true
  validates :username, length: { minimum: 2 }
  validates :email, uniqueness:  true

  has_secure_password
  has_many :boxes
  has_many :items, through: :boxes
end

class Item < ActiveRecord::Base
  validates :name, presence: true
  belongs_to  :box
  has_one     :user, through: :box
end

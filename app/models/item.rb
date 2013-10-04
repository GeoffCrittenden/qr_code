class Item < ActiveRecord::Base
  # Remember to create a migration!
  validates :name, presence: true

  belongs_to :restaurant
  has_and_belongs_to_many :orders
end

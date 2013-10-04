class Order < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user
  belongs_to :restaurant
  has_and_belongs_to_many :items
end

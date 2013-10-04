class Restaurant < ActiveRecord::Base
  # Remember to create a migration!
  has_many :items
  has_many :orders
end

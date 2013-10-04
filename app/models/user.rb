class User < ActiveRecord::Base
  # Remember to create a migration!
  validates :name, presence: true

  has_many :orders
end

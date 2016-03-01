class Apartment < ActiveRecord::Base
	has_many :users
	belongs to :tower
end

class Apartment < ActiveRecord::Base
	has_many :users
	belongs_to :tower
end

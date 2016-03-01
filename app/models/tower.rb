class Tower < ActiveRecord::Base
	has_many :apartments
	has_many :users
end

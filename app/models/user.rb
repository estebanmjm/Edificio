class User < ActiveRecord::Base
	belongs_to :tower
	belongs_to :apartment

end

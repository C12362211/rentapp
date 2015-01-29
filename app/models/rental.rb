class Rental < ActiveRecord::Base
	belongs_to :game
	belongs_to :customer
end

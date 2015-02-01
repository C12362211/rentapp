class Rental < ActiveRecord::Base
	belongs_to :game
	belongs_to :customer
	
	validates :customer_id, presence: true
	validates :game_id, presence: true
	validates :date_rented, presence: true
	validates :date_due, presence: true
end

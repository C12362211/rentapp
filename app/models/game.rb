class Game < ActiveRecord::Base
	belongs_to :dev
	has_many :rentals, :dependent => :destroy
	has_many :posts, :dependent => :destroy
	
	validates :title, presence: true
	validates :rating, presence: true
	validates :dev_id, presence: true
end
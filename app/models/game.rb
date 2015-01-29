class Game < ActiveRecord::Base
	belongs_to :dev
	has_many :rentals, :dependent => :destroy
end

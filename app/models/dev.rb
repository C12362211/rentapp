class Dev < ActiveRecord::Base
	has_many :games, :dependent => :destroy
	
	validates_uniqueness_of :name
	validates :name, presence: true
end

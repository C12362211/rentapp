class Customer < ActiveRecord::Base
	has_many :rentals, :dependent => :destroy
	has_many :posts, :dependent => :destroy

	validates_uniqueness_of :name
	validates_uniqueness_of :phone
	
	validates :name, presence: true
	validates :address, presence: true
	validates :phone, presence: true
	validates :dob, presence: true
end

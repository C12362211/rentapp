class Customer < ActiveRecord::Base
	has_secure_password
	has_many :rentals, :dependent => :destroy
	has_many :posts, :dependent => :destroy

	validates_uniqueness_of :name
	validates_uniqueness_of :email
	validates_confirmation_of :password     
	
	validates :name, presence: true
	validates :email, presence: true
	validates :password_digest, presence: true
	validates :address, presence: true
	validates :dob, presence: true
	
	geocoded_by :address
	after_validation :geocode, :if => :address_changed?
	
end

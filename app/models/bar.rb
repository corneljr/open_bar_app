class Bar < ActiveRecord::Base

	# has_many :reviews
 #  has_many :users, :through => :reservations, :reviews
 #  has_many :reservations


	validates :name, :description, :address, :capacity, :presence => true
	validates :capacity, :numericality => {:only_integer => true}

end

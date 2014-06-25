class Reservation < ActiveRecord::Base
	belongs_to :bar, :user
end

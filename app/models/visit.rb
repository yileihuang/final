class Visit < ActiveRecord::Base
	belongs_to :group
	belongs_to :touristsite
end

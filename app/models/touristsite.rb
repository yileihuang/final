class Touristsite < ActiveRecord::Base
	has_many :visits
	has_many :groups, through: :visits
end

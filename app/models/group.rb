class Group < ActiveRecord::Base
	has_many :messages
	has_many :members
	has_many :visits
	has_many :touristsites, through: :visits
end

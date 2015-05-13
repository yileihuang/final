class Group < ActiveRecord::Base
	has_many :messages
	has_many :members
	has_many :visits
end

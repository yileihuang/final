class User < ActiveRecord::Base
	validates :netid, presence: true
	validates :name, presence: true
	validates :email, presence: true
	validates :password, presence: true
	has_secure_password
	has_many :members
end

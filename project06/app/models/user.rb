class User < ActiveRecord::Base
	ROLES = {"admin", "member", "public"}
	
	validates :username, presence: true, uniqueness: true
	validates :email, :email => true
	validates :role, inclusion: ROLES
	has_secure_password
end

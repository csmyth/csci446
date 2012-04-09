class User < ActiveRecord::Base
	ROLES = ["member", "admin"]
	
	validates :username, presence: true, uniqueness: true, length: {minimum: 6}
	validates :password, length: {minimum: 6}
	validates :first_name, :last_name, :email, presence: true
	validates :email, :email => true
	validates :role, inclusion: ROLES
	has_secure_password
end

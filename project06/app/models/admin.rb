class Admin < ActiveRecord::Base
	validates :username, presence: true, uniqueness: true
	validates :email, :email => true
	has_secure_password
end

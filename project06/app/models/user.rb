class User < ActiveRecord::Base
	validates :first_name, :last_name, presence: true
	
	acts_as_authentic do |c|
		c.validates_length_of_login_field_options = {:minimum => 6}
		c.validates_uniqueness_of_login_field_options = {:uniqueness => true}
		c.validates_length_of_password_field_options = {:minimum => 6}
	end
end

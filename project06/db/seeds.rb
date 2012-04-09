# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
User.create(username: 'administrator', 
		password: 'password',
		first_name: 'Darth',
		last_name: 'Vader',
		email: 'wehavecookies@thedarkside.com',
		role: 'admin')
User.create(username: 'member',
		password: 'password',
		first_name: 'Obi Wan',
		last_name: 'Kenobi',
		email: 'hellothere@tatooine.net')
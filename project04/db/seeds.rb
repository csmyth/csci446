# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Article.delete_all
Article.create(title: "Children of the Gods", author: "Jack O'Neill", 
	body:
		%{<p>The Stargate Program (SGC) is revived when Apophis, an alien of the same race as Ra, comes to Earth through the gate seeking hosts. After the attack, Colonel Jack O'Neill and Samantha Carter are sent to Abydos to locate, and bring back, Daniel Jackson. O'Neill and Daniel befriend Apophis's first prime Teal'c, a Jaffa (one who is an incubator to a larval Goa'uld), and Teal'c joins their side. He helps SG-1 return to Earth, though they cannot save Daniel's wife Sha're and his friend Skaara, who have been taken as hosts. 
		</p>},
	creation_date:  '1997-07-27')
# ...
Article.create(title: "The Serpent's Lair", author: "Samantha Carter", 
	body:
		%{<p>Teal'c's former mentor Bra'tac joins their fight and together they embark on a mission of planting bombs to destroy Apophis' ship and halt the attack on Earth. Eventually they destroy the two ships and escape in Death Gliders. 
		</p>},
	creation_date:  '1998-06-26')
# ...
Article.create(title: "Into the Fire", author: "Daniel Jackson", 
	body:
		%{<p>The SGC sends a rescue mission to Hathor's base to retrieve SG-1, and O'Neill kills Hathor. Using Tok'ra tunnels already present on the planet, SG-1 escapes and returns home. 
		</p>},
	creation_date:  '1999-06-25')
# ...
Article.create(title: "Small Victories", author: "Teal'c", 
	body:
		%{<p>The Replicator on Earth has reproduced and taken over a submarine; O'Neill and Teal'c neutralise the threat. Carter goes with Thor to defend the Asgard homeworld from the Replicators. They use the Asgard's newest ship (named the O'Neill) to lure the Replicators into hyperspace, where the ship is blown up. 
		</p>},
	creation_date:  '1998-06-26')
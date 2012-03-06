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
Article.create(title: "Enemies", author: "George Hammond", 
	body:
		%{<p>After Apophis has brainwashed Teal'c, SG-1 and Jacob prepare to fight against their foe on board Cronus's ship. A mysterious ship then appears, giving them the chance to get on board. But danger lurks on board in the form of an army of Replicator bugs and an auto-destruct programme. 
		</p>},
	creation_date:  '2001-06-29')
# ...
Article.create(title: "Redemption", author: "Jonas Quinn", 
	body:
		%{<p>Anubis has found an ancient weapon capable of destroying the Stargate - and Earth along with it - by slowly building up an overcharge of energy in its superconducting ring. 
		</p>},
	creation_date:  '2002-06-07')
# ...
Article.create(title: "Fallen", author: "Janet Fraiser", 
	body:
		%{<p>Daniel is found living on Vis Uban ("place of great power", P4T-3G6), a planet where the Ancients began building their greatest city when they were struck by a plague. Although Daniel has total amnesia, he helps SG-1 destroy Anubis' superweapon.  
		</p>},
	creation_date:  '2003-06-13')
# ...
Article.create(title: "New Order", author: "Walter Harriman", 
	body:
		%{<p>Three System Lords meet with the SGC after their defeat of Anubis. Carter is abducted by Fifth. O'Neill is awakened and creates a device of Ancient design. 
		</p>},
	creation_date:  '2004-07-09')
# ...
Article.create(title: "Avalon", author: "Cameron Mitchell", 
	body:
		%{<p>Lt. Colonel Cameron Mitchell is recruited by the SGC as leader of SG-1 but finds the original SG-1 has disbanded. Trying to find out how to bring them back together, Vala Mal Doran arrives with an artifact which could reveal an ancient treasure, and he finds this is his only opportunity to reunite the team. 
		</p>},
	creation_date:  '2005-07-15')
# ...
Article.create(title: "Flesh and Blood", author: "Vala Mal Doran", 
	body:
		%{<p>Following their devastating attack on Milky Way forces, the Ori leave the scene to begin their holy crusade and purify the galaxy of evil. As the remnants of the makeshift Milky Way fleet come together, Vala finally gives birth to her baby, a girl, the Orici, genetically altered by the Ori to command their forces. Daniel Jackson must pretend to be an Ori warrior while he is with Vala and her soldier husband, Tomin, on the Orici's flagship which has just arrived on Chulak to convert the Jaffa into believing in Origin. An attempt by SG-1 and Bra'tac to destroy the fleet over Chulak fails and Bra'tac sets a collision course with one of the ships in a futile attempt to destroy it while Daniel is captured by Tomin. He escapes and knocks out both Adria and Tomin, but is disarmed by a Prior and trapped with Vala in a wall of fire with no way out. In the nick of time, the Odyssey arrives and beams SG-1 off their ship and Daniel out of the Ori warship. As Daniel beams out, he manages to grab Vala and take her with him, but leaves Adria behind. 
		</p>},
	creation_date:  '2006-07-14')
# ...
Article.create(title: "Rising", author: "Ronon Dex", 
	body:
		%{<p>After relinquishing her position at Stargate Command, Dr. Elizabeth Weir has been working in the Antarctic Outpost, gathering members of an expedition to embark to the lost city of Atlantis. When they seem to be able to ascertain a gate address, a new adventure begins. 
		</p>},
	creation_date:  '2004-07-16')
# ...
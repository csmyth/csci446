# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#---
# Excerpted from "Agile Web Development with Rails",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
#---
# encoding: utf-8
Product.delete_all
Product.create(title: 'Serenity',
  description: 
    %{<p>
        Malcolm Reynolds is a veteran and the captain of Serenity. He and his crew are smuggling goods, but they need to pick up some passengers for extra money. However, not all the passengers are what they seem. 
      </p>},
  image_url:   'serenity.jpg',    
  price: 36.00)
# . . .
Product.create(title: 'The Train Job',
  description:
    %{<p>
        The crew of Serenity takes on a train heist commissioned by a crime lord. They steal the goods, only to find it is medicine that is desperately needed by the town. 
      </p>},
  image_url: 'trainjob.jpg',
  price: 49.95)
# . . .

Product.create(title: 'Bushwhacked',
  description: 
    %{<p>
        Serenity is pulled in by an Alliance cruiser while investigating a spaceship that was attacked by Reavers. Simon and River must hide to prevent capture, while something is wrong with the lone survivor of the attacked spaceship. 
      </p>},
  image_url: 'bushwhacked.jpg',
  price: 34.95)

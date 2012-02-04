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
Product.create(title: 'Pilot',
  description: 
    %{<p>
        A pair of brilliant theoretical physicists meet a woman who shows them how little they know about the real world.
      </p>},
  image_url:   'pilot.jpg',    
  price: 36.00)
# . . .
Product.create(title: 'The Big Bran Hypothesis',
  description:
    %{<p>
        Penny is furious and more than a little freaked out with Leonard and Sheldon when they sneak into her apartment overnight, and clean it while she is sleeping. 
      </p>},
  image_url: 'bigbran.jpg',
  price: 49.95)
# . . .

Product.create(title: 'The Fuzzy Boots Corollary',
  description: 
    %{<p>
        Leonard gets upset when he discovers that Penny is seeing a new guy, so he tries to trick her into going on a "date" with him.
      </p>},
  image_url: 'fuzzyboots.jpg',
  price: 34.95)

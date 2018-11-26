require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


bronx_zoo = Zoo.new("bronx zoo", "bronx")
new_zoo_in_bronx = Zoo.new("new zoo in bronx", "bronx")
brooklyn_zoo = Zoo.new("brooklyn zoo", "brooklyn")

tony_the_tiger = Animal.new("tiger", 700, "tony", bronx_zoo)
frank_the_tiger = Animal.new("tiger", 690, "frank", bronx_zoo)
joe_the_wolf = Animal.new("wolf", 400, "joe", bronx_zoo)
carl_the_cat = Animal.new("cat", 60, "carl", new_zoo_in_bronx)


 binding.pry
puts "done"

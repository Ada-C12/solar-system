require_relative 'planet'

# manually enters planet information and creates new intances of Planet class
def main 
  planet_1 = Planet.new("earth", "blue", 34, 23409, "It's made of bleu cheese")
  
  planet_2 = Planet.new("mars", "orange", 790, 704307, "It's made of mustard")
  
  return "#{planet_1.summary}\n #{planet_2.summary}"
  
end

# puts information for the planets 
puts main
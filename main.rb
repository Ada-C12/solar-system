require_relative 'planet'
require_relative 'solar_system'

decision = ()

def main
  
  earth = Planet.new("Earth","mostly blue with white clouds", 5.97e24, 1.496e8, "It has bees")
  mars = Planet.new("Mars", "rusty butterscotch", 10e23, 227883110.4, "It does not have bees")
  venus = Planet.new("Venus", "pale yellow", 10e24, 108.2, "Has a bee-free environment")
  
  solar_system = SolarSystem.new("Sun")
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(venus)
  
  puts "Enter '1' to list planet names, '2' to see planet details, or '3' to exit."
  decision = gets.chomp.to_s
  
  while decision != "3"
    
    if decision == "1"
      puts solar_system.list_planets
      puts "Enter '1' to list planet names, '2' to see planet details, or '3' to exit."
      decision = gets.chomp.to_s
      
    elsif decision == "2"
      found_planet = solar_system.find_planet_by_name("earth")
      puts found_planet
      puts found_planet.summary
      puts "Enter '1' to list planet names, '2' to see planet details, or '3' to exit."
      decision = gets.chomp.to_s
      
    elsif decision !="1" && decision !="2" && decision !="3"
      puts "Invalid entry."
      exit
    end
    
    if decision == "3"
      exit
    end
    
  end
end

main

#   puts earth.summary
#   puts mars.summary


#   solar_system = SolarSystem.new("Sun")



#   solar_system.add_planet(earth)
#   solar_system.add_planet(mars)
#   puts solar_system.list_planets

#   found_planet = solar_system.find_planet_by_name("earth")
#   puts found_planet
#   puts found_planet.summary
# end

# main
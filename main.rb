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
  
  puts "Enter '1' to list planet names, '2' to see planet details, '3' to enter a new planet, or '4' to exit."
  decision = gets.chomp.to_s
  
  while decision != "4"
    
    if decision == "1"
      puts solar_system.list_planets
      puts "Enter '1' to list planet names, '2' to see planet details, '3' to enter a new planet, or '4' to exit."
      decision = gets.chomp.to_s
      
    elsif decision == "2"
      found_planet = solar_system.find_planet_by_name("earth")
      puts found_planet
      puts found_planet.summary
      puts "Enter '1' to list planet names, '2' to see planet details, '3' to enter a new planet, or '4' to exit."
      decision = gets.chomp.to_s
      
    elsif decision == "3"
      puts "Let's put information about the planet you'd like to add."
      
      new_planet = []
      planet_categories = ["name","color", "mass_in_kg", "distance_from_sun_km", "fun_fact"]
      
      planet_categories.each do |category|
        puts "Enter the planet's #{category}."
        category_info = gets.chomp.to_s
        new_planet << category_info
      end
      
      trash_garbage = Planet.new(*new_planet)
      solar_system.add_planet(trash_garbage)
      
      
      puts "Enter '1' to list planet names, '2' to see planet details, '3' to enter a new planet, or '4' to exit."
      decision = gets.chomp.to_s
      
      
      
    elsif decision !="1" && decision !="2" && decision !="3"
      puts "Invalid entry."
      exit
    end
    
    if decision == "4"
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
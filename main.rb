# WAVE 1
require_relative 'planet'
require_relative 'solar_system'

# WAVE 1

def main # Creates solar system and populates it
  solar_system_1 = SolarSystem.new("Red Dwarf")
  
  planet_1 = Planet.new(name: "Din", color: "Pink", mass_kg: 237923789, distance_from_sun_km: 3278997897823575978987, fun_fact: "It's made out of cotton candy")
  
  solar_system_1.add_planet(planet_1)
  
  planet_2 = Planet.new(name: "Minnie", color: "orange", mass_kg: 780978, distance_from_sun_km: 9877984531234354, fun_fact: "It's made out of mustard")
  
  solar_system_1.add_planet(planet_2)
  
  # displays the planet summeries
  solar_system_1.planets.each do |planet|
    puts planet.summary
  end
  
  # displays the solar system list for the user
  solar_system_1.list_planets.each do |line|
    puts line
  end
  
  print "Do you want to look up a planet? (Y or N): "
  lookup = gets.chomp.upcase
  if lookup == "Y"
    planet_search = nil
    print "Enter the name of the planet you want to search for: "
    planet_search = gets.chomp.upcase
    puts solar_system_1.find_planet_by_name(planet_search)
    
  end
  
  
end


main

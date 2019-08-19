require_relative "planet"
require_relative "solar_system"

def main
  # Create two different instances of planet and print out some of their attributes
  zorg = Planet.new("Zorg", "purple", 4.12e24, 57.9e6, "Planet has a roller coaster.")
  # puts zorg.summary
  
  tron = Planet.new("Tron", "blue", 3.56e24, 227.9e6, "Planet uses nuclear energy.")
  # puts tron.summary
  
  tron_two = Planet.new("Tron", "green", 3.56e24, 100.7e6, "Planet uses solar energy.")
  
  giga = Planet.new("Giga", "red", 8.34e24, 75.5e6, "Planet has no water.")
  
  duo = Planet.new("Duo", "green", 1.45e24, 18.5e6, "Planet has rain everyday.")
  
  # Create an instance of SolarSystem and add all your planets to it
  solar_system = SolarSystem.new("Sun")
  solar_system.add_planet(zorg)
  solar_system.add_planet(tron)
  solar_system.add_planet(tron_two)
  solar_system.add_planet(giga)
  solar_system.add_planet(duo)
  
  # Print the list of all planets in that solar system
  puts solar_system.list_planets
  
  # Planet that doesn't exist
  puts solar_system.find_planet_by_name("earth")
  
  # Planet that exists
  puts solar_system.find_planet_by_name("zorg")
  
  # Multiple planets with same name
  puts solar_system.find_planet_by_name("tron")
end

main

# Wave 1
require_relative "planet"
require_relative "solar_system"

def main
  jupiter = Planet.new("Jupiter", "Orange", "5.972e23", "1.94e8", "Has a red eye full of storms")
  earth = Planet.new("Earth", "Blue", "34.e39", "14", "Only planet with life")
  mercury = Planet.new("Mercury", "Red", "35.e39", "10", "Hottest Planet")
  venus = Planet.new("Venus", "Brown", "39.e39", "20", "2nd Hottest Planet")
  mars = Planet.new("Mars", "Brown-Orange", "40.e27", "30", "Super Rocky")
  
  puts "\n#{earth.summary}"

  # Wave 2
  solar_system = SolarSystem.new("Sun")
  solar_system.add_planet(mercury)
  solar_system.add_planet(venus)
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(jupiter)

  list = solar_system.list_planets
  puts list

  found_planet = solar_system.find_planet_by_name("eArTh")
  puts "\n#{found_planet}"
  puts "\n#{found_planet.summary}"
end

main


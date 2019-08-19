# main.rb
require_relative 'planet'
require_relative 'solar_system'

def main

  # # instance 1
  # puts "Here is a planet named #{@planet.name}"
  # # instance 2
  # puts "Description: #{@planet.summary}"


  solar_system = SolarSystem.new('Sun')

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  solar_system.add_planet(earth)

  pluto = Planet.new('Pluto', 'blue', 1.309e22, 5.906e38, 'No longer a planet ;(')
  solar_system.add_planet(pluto)

  list = solar_system.list_planets
  puts list


  found_planet = solar_system.find_planet_by_name('Earth')

  # found_planet is an instance of class Planet
  puts found_planet
  # => #<Planet:0x00007fe7c2868ee8>

  puts found_planet.summary
  # => Earth is a blue-green planet ...
end

main
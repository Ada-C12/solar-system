require_relative 'planet'
require_relative 'solar_system'

# # Wave 1:
# def main
#   saturn = Planet.new('Saturn', 'yellow', 565, 653366, 'it has cool rings')
#   puts saturn.summary 

#   pluto = Planet.new('Pluto', 'blue', 1000, 9584748, 'it is a controversial planet pick')
#   puts pluto.summary 
# end 

# main

#Wave 2:
solar_system = SolarSystem.new('Io')

pluto = Planet.new('Pluto', 'blue', 1000, 9584748, 'it is a controversial planet pick')
solar_system.add_planet(pluto)

kuiper_belt = Planet.new('Kuiper Belt', 'gray', 10, 958485984748, 'it is not a planet at all just rocks')
solar_system.add_planet(kuiper_belt)

list = solar_system.list_planets
puts list

found_planet = solar_system.find_planet_by_name('pLUto')
puts found_planet
puts found_planet.summary 

found_planet = solar_system.find_planet_by_name('mars')
puts found_planet 
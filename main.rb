require_relative 'planet'
require_relative 'solar_system'

def main

  solar_system = SolarSystem.new('Sol')

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life...or so we think...')
  solar_system.add_planet(earth)

  saturn = Planet.new('Saturn', 'red-orange', 5.683e26, 1.434e9, 'A planet with many rings')
  solar_system.add_planet(saturn)

  list = solar_system.list_planets
  puts list

  # puts earth.summary

  # puts saturn.summary

end

main

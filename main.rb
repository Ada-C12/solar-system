require_relative "planet"
require_relative "solar_system"

require 'pry'

def main
    solar_system = SolarSystem.new('Sol')

    earth = Planet.new('earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
    saturn = Planet.new('saturn', 'yellow-brown', 5.683e26, 1.434e9, 'Best known for its fabulous ring system')
    
    solar_system.add_planet(earth)
    solar_system.add_planet(saturn)
    list = solar_system.list_planets
    found_planet = solar_system.find_planet_by_name("eArTh")
    planetfound_planet.summary
end

main


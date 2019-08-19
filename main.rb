require_relative "planet"
require_relative "solar_system"

def main
  solar_system = SolarSystem.new("Sol")
  earth = Planet.new(name: "Earth", color: "blue-green", mass_kg: 5.972e24, distance_from_sun_km: 1.496e8, fun_fact: "Only planet known to support life")

  solar_system.add_planet(earth)
  list = solar_system.list_planets
  puts list

  found_planet = solar_system.find_planet_by_name("Earth")

  # found_planet is an instance of class Planet
  puts found_planet
  # => #<Planet:0x00007fe7c2868ee8>

  puts found_planet.summary
end

main

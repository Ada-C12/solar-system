require_relative "planet"

def main
  solar_system = SolarSystem.new("Solar")

  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
  solar_system.add_planet(earth)

  list = solar_system.list_planets
  puts list
end

main

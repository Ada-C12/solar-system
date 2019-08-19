require_relative "planet"
require_relative "solar_system"

def main
  #initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
  mercury = Planet.new("Mercury", "dark gray", 3.3011e23, 5.791e7, "A year on Mercury is just 88 days long.")
  venus = Planet.new("Venus", "yellow", 4.8675e24, 1.082e8, "The surface of Venus is hidden by an opaque layer of clouds which are formed from sulphuric acid.")
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Earth is the only planet known to support life.")
  mars = Planet.new("Mars", "red", 6.4171e23, 2.279e8, "Mars is home to the tallest mountain in the solar system.")
  jupiter = Planet.new("Jupiter", "white-orange-brown-red", 1.8982e27, 7.785e8, "While Jupiter is rich in hydrogen and helium, it does not have nearly enough mass to trigger a fusion reaction in its core.")

  # puts mercury.summary
  # puts venus.summary
  # puts earth.summary
  # puts mars.summary
  # puts jupiter.summary

  solar_system = SolarSystem.new("Sun")
  solar_system.add_planet(mercury)
  solar_system.add_planet(venus)
  solar_system.add_planet(earth)

  list = solar_system.list_planets
  # puts list

  found_planet = solar_system.find_planet_by_name("Jupiter")
  puts found_planet
  puts found_planet.summary
end

main

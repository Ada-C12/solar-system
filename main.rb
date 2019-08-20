require_relative "planet"
require_relative "solar_system"

def main
  solar_system = SolarSystem.new("Sol")
  earth = Planet.new(name: "Earth", color: "blue-green", mass_kg: 5.972e24, distance_from_sun_km: 1.496e8, fun_fact: "Only planet known to support life")
  venus = Planet.new(name: "Venus", color: "white", mass_kg: 4.867e24, distance_from_sun_km: 1.0826e8, fun_fact: "Venus is the only planet in the Solar System to be named after a female figure.")
  exploder = Planet.new(name: "Exploder", color: "fire", mass_kg: 1.847e26, distance_from_sun_km: 1.0826e5, fun_fact: "Exploder is too close to the Sun. It is going to explode.")
  solar_system.add_planet(earth)
  solar_system.add_planet(venus)
  solar_system.add_planet(exploder)

  user_input = nil
  puts "Hey user, what do you want to do? (please type 'list' to list the planets or 'exit' to leave the program"
  user_input = gets.chomp.downcase
  until user_input == "exit"
    list = solar_system.list_planets
    puts list
    puts "What do you wanna do next? (Please type 'list' to list the planets or 'exit' to leave the program"
    user_input = gets.chomp.downcase
  end

  found_planet = solar_system.find_planet_by_name("Earth")

  # found_planet is an instance of class Planet
  puts found_planet
  # => #<Planet:0x00007fe7c2868ee8>

  puts found_planet.summary
end

main

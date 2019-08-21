require_relative 'planet'
require_relative 'solar_system'

solar_system = SolarSystem.new('Sol')

earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'only planet known to support life')

mars = Planet.new('Mars', 'orange', 6.39e23, 2.279e8, 'named after Roman god of war')

solar_system.add_planet(earth)
solar_system.add_planet(mars)

def planet_details(solar_system)
  puts "which planet?"
  planet = gets.chomp
  planet_to_return = solar_system.find_planet_by_name(planet)
  puts planet_to_return.summary
end

def add_planet(solar_system)
  puts "Planet name?" 
  name = gets.chomp
  puts "Color?"
  color = gets.chomp
  puts "Mass in kg?"
  mass_kg = gets.chomp
  puts "Distance from the sun in km?"
  distance_from_sun_km = gets.chomp
  puts "Fun fact?"
  fun_fact = gets.chomp

  new_planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)

  solar_system.add_planet(new_planet)
end

response = nil

while response != "exit"
  puts "\nWhat would you like to do: \n- List planets? \n- List planet details? \n- Add a planet? \n- Exit?"
  response = gets.chomp.downcase

  case response
    when "list planets"
      solar_system.list_planets
    when "list planet details"
      planet_details(solar_system)
    when "add a planet"
      add_planet(solar_system)
    when "exit"
      exit
  end
end

require_relative 'planet'
require_relative 'solar_system'

def main 
  mercury = Planet.new('Mercury', 'gray', 3.285e23, 5.791e7, 'it does not have any moons or rings')
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'it is the only planet known to support life')
  
  solar_system = SolarSystem.new('Sol')

  solar_system.add_planet(earth)
  solar_system.add_planet(mercury)
  
  puts "What do you want to do? The options are list planets, planet details, add planet or exit."
  option = gets.chomp
  
  while option == 'list planets' || option == 'planet details' || option == 'add planet'|| option == 'exit'
    
    if option == 'list planets'
      list = solar_system.list_planets
      puts list
      
    elsif option == 'planet details'
      puts "What is the name of the planet you wish to learn about?"
      planet_name = gets.chomp
      found_planet = solar_system.find_planet_by_name(planet_name)
      puts found_planet.summary

    elsif option == 'add planet'
      puts 'What is the name of the planet?'
      name = gets.chomp
      puts 'What is the color of the planet?'
      color = gets.chomp
      puts 'What is the mass in kg of the planet?'
      mass_kg = gets.chomp
      puts 'What is the distance from sun of the planet?'
      distance_from_sun_km = gets.chomp
      puts 'What is a fun fact of the planet?'
      fun_fact = gets.chomp

      new_planet = Planet.new(name, color, mass_kg.to_f, distance_from_sun_km.to_f, fun_fact)
      solar_system.add_planet(new_planet)
    else 
      exit
    end
    puts "What do you want to do? The options are list planets, planet details, add planet or exit."
    option = gets.chomp
  end
end 
main
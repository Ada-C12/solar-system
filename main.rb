require_relative 'planet'
require_relative 'solar_system'

def main    
  mercury = Planet.new('Mercury', 'Dark gray', 2.867e23, 1.08e6, 'Mercury is the smallest planet in the Solar System.' )
  venus = Planet.new('Venus', 'Yellow-white', 3.867e23, 1.08e8, 'Venus rotate in the opposite direction to other planets.')
  earth = Planet.new('Earth', 'Blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mars = Planet.new('Mars', 'Red', 6.42e23, 2.276e8, 'Mars is home to the highest mountain in our solar system.')
  jupiter = Planet.new('Jupiter', 'Brown-orange', 10.42e23, 5.276e8, 'Jupiter is the largest planet in the solar system.')
  saturn = Planet.new('Saturn', 'Yellow-brown', 15.42e23, 9.276e8, 'You cannot stand on Saturn. It is not like Earth. Saturn is made mostly of gases.')
  uranus = Planet.new('Uranus', 'Blue', 20.42e23, 11.276e8, 'Uranus has 27 moons.')
  neptune = Planet.new('Neptune', 'Azure-blue', 16.42e23, 2.276e8, 'Neptune is the Coldest Planet in the Solar System.')
  pluto = Planet.new('Pluto', 'Red-white', 30.42e23, 20.276e8, 'Pluto has been visited by one spacecraft.')

  #Wave 1
  # puts earth.name
  # puts earth.fun_fact
  # puts earth.summary
  
  #Wave 2
  solar_system = SolarSystem.new('Sol')
  
  solar_system.add_planet(mercury)
  solar_system.add_planet(venus)
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(jupiter)
  solar_system.add_planet(saturn)
  solar_system.add_planet(uranus)
  solar_system.add_planet(neptune)
  solar_system.add_planet(pluto)
  
  
  # puts solar_system.list_planets
  # puts "\n"
  # found_planet = solar_system.find_planet_by_name("eArTh")
  # puts found_planet
  # puts found_planet.summary

  #Wave 3
  def user_planet()
    new_planet_details = ["name", "color", "mass in kg", "distance from the sun in km", "fun fact"]
    
    new_planet_details.map! do |detail|
      print "Enter the planet #{detail}: "
      detail = gets.chomp
    end
    new_planet = Planet.new("name", "color", "mass_kg", "distance_from_sun_km", "fun_fact")
    new_planet.name = new_planet_details[0]
    new_planet.color = new_planet_details[1]
    new_planet.mass_kg = new_planet_details[2]
    new_planet.distance_from_sun_km = new_planet_details[3]
    new_planet.fun_fact = new_planet_details[4]
    return new_planet
  end

  valid_input = false
  until valid_input 
    puts "Hello there! What do you want to do next (1,2,3)?"
    puts "1. List Planets"
    puts "2. Planet details"
    puts "3: Add planet"
    puts "4: Exit"
    options = gets.chomp 
    if options.to_i.to_s == "1"
      puts solar_system.list_planets
      valid_input = true
    elsif options.to_i.to_s == "2"
      valid_input = true
      puts "What planet do you want to learn more?"
      planet = gets.chomp.capitalize
      found_planet = solar_system.find_planet_by_name(planet)
      puts found_planet.summary
    elsif options.to_i.to_s == "3"
      valid_input = true
      new_planet = user_planet
      solar_system.add_planet(new_planet)
      puts solar_system.list_planets
      puts new_planet.summary
    elsif options.to_i.to_s == "4"
      valid_input = true
      exit
    end
  end
end

main


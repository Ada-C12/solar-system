# Wave 3
# Since wave 3 required replacing the driver code in our main method, 
# I choose to create another file for Wave 3. 

require_relative "planet"
require_relative "solar_system"

def main
  # Wave 3
  solar_system = SolarSystem.new("Sun")
  saturn = Planet.new("Saturn", "Blue", "13.e56", "4.98e33", "Has a ring around it")
  pluto = Planet.new("Pluto", "Very Blue", "45.e87", "2.34e8", "Isn't actually a planet")
  neptune = Planet.new("Neptune", "Very Very Blue", "87.e45", "3.45e3", "Really cold")
  
  solar_system.add_planet(saturn)
  solar_system.add_planet(pluto)
  solar_system.add_planet(neptune)

  def planet_details(solar_system)
    puts "Which planet would you like to learn about?"
    planet = gets.chomp
    found_planet = solar_system.find_planet_by_name(planet)
    return found_planet.summary
  end 

  def add_planet(solar_system)
    planet_details_array = []
    # puts "What are the details of this planet? Provide the following. \nname: \ncolor: \nmass_kg: \ndistance: \nfun fact:"
    puts "What is the name of this planet?"
    planet_details_array.push(gets.chomp)
    puts "What is the color of this planet?"
    planet_details_array.push(gets.chomp)
    puts "What is the mass_kg of this planet?"
    planet_details_array.push(gets.chomp)
    puts "What is the distance of this planet from the Sun?"
    planet_details_array.push(gets.chomp)
    puts "What is a fun fact about this planet?"
    planet_details_array.push(gets.chomp)
    planet = Planet.new(planet_details_array[0], planet_details_array[1], planet_details_array[2], planet_details_array[3],
    planet_details_array[4])
    return solar_system.add_planet(planet)
  end     

  user_input = "A"

  while user_input == "A" || user_input == "B" || user_input == "C"
    puts "What would you like to do next? \nA: List planets \nB: Planet Details \nC: Add Planet \nD: Exit Program"
    user_input = gets.chomp
    case user_input 
    when "A"
      puts solar_system.list_planets
    when "B"
      puts planet_details(solar_system)
    when "C"
      add_planet(solar_system)
    when "D"
      user_input = "D"
    end 
  end 
end

main
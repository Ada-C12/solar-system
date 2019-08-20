require_relative 'planet'
require_relative 'solar_system'

def main
  
  puts "BIG BANG!"
  puts "Enter the name of a star:"
  name = gets.chomp
  solar_system = SolarSystem.new(name)
  
  puts "You've created a solar system around a star named #{solar_system.star_name}. Would you like to add a planet? (Y/N)"
  y_or_n = gets.chomp.upcase
  
  while y_or_n == "Y"
    puts "Enter the planet name:"
    name = gets.chomp.to_s
    puts "Enter the planet's color:"
    color = gets.chomp.to_s
    puts "Enter the planet's mass in kg"
    mass = gets.chomp.to_f
    puts "Enter the planet's distance from the sun in km:"
    distance = gets.chomp.to_f
    puts "Enter a fun fact about the planet:"
    fun_fact = gets.chomp.downcase
    planet = Planet.new(name, color, mass, distance, fun_fact)
    solar_system.planets << planet
    
    puts solar_system.planets[0].trim_fun_fact
    puts "You've added the planet #{name}. Would you like to add another planet? (Y/N)"
    y_or_n = gets.chomp.upcase
  end
  
  puts "What would you like to do next? \n 1. list planets \n 2. exit \nPress 1 or 2:"
    response = gets.chomp.to_i
    # until response == 1 || response == 2
    #   puts "Please press 1 or 2:"
    #   response = gets.chomp.to_i
    # end  
    if response == 1
      puts solar_system.list_planets
      puts solar_system.planets[0].summary
    elsif response == 2
      "Thanks for creating a solar system!"
    end  
    
    # earth = Planet.new("earth", "green", 55.9, 10, "earth is big")
    # solar_system = SolarSystem.new("Sol")
    # solar_system.add_planet(earth)
    # # return solar_system.list_planets
    
    # found_planet = solar_system.find_planet_by_name("krypton")
    # puts found_planet
    
  end
  
  main
  
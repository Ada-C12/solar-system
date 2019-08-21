require_relative 'planet'
require_relative 'solar_system'

def main
  solar_system = SolarSystem.new('Sol')
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life') 
  mercury = Planet.new('Mercury', 'dark gray', 3.285e23, 5.791e7, 'Mercury is the closest planet to the sun' )
  
  solar_system.add_planet(earth)
  solar_system.add_planet(mercury)
  
  
  list = solar_system.list_planets
  
  
  found_planet = solar_system.find_planet_by_name('Earth')
  #puts found_planet
  #puts found_planet.summary
  
  # def planet_details 
  
  #   puts "Which planet would you like to learn about?"
  #   name = gets.chomp.to_s.downcase
  #   learn_about_planet = solar_system.find_planet_by_name(name)
  #   return learn_about_planet.summary
  # end
  
  
  
  puts "============YOUR SOLAR SYSTEM============"
  puts
  puts "Welcome to your solar system! This solar system revolves around the star 'Sol'."
  puts 
  puts "Would you like to enter your solar system? (y/n)"
  play = gets.chomp
  
  while play == "y"
    puts "Your options are to 'list' the planets, receieve 'planet details' or 'exit'."
    user_option = gets.chomp.to_s.downcase
    case user_option
    when "list"
      puts list
      puts
    when "planet details"
      puts "Which planet would you like to learn about?"
      name = gets.chomp.to_s.downcase
      learn_about_planet = solar_system.find_planet_by_name(name)
      puts learn_about_planet.summary
      puts 
    when "exit"
      exit
    else
      puts "Enter vaild option."
      
    end
  end
end

main
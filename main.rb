require_relative 'planet'
require_relative 'solar_system'

def main
  solar_system = SolarSystem.new('Sol')
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life') 
  mercury = Planet.new('Mercury', 'dark gray', 3.285e23, 5.791e7, 'Mercury is the closest planet to the sun' )
  
  solar_system.add_planet(earth)
  solar_system.add_planet(mercury)
  
  #list = solar_system.list_planets
  
  #found_planet = solar_system.find_planet_by_name('Earth')
  #puts found_planet
  #puts found_planet.summary
  
  puts "============YOUR SOLAR SYSTEM============"
  puts
  puts "Welcome to your solar system! This solar system revolves around the star 'Sol'."
  puts 
  puts "Would you like to enter your solar system? (y/n)"
  play = gets.chomp
  puts
  
  while play == "y"
    puts "Now, you can either:\n
    1. List the planets\n
    2. Receieve planet details\n
    3. Add planet\n
    4. Exit"
    puts
    print "Enter the number of which option you would like: "
    user_option = gets.chomp.to_s.downcase
    puts
    case user_option
    when "1"
      puts solar_system.list_planets
      puts
    when "2"
      unknown_planet = solar_system.planet_details
      p unknown_planet
    when "3"
      users_planet = solar_system.new_planet
    when "4"
      exit
    else
      puts "Enter vaild option."
    end
  end
end

main
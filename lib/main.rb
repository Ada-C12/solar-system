require_relative 'planet'
require_relative 'solar_system'

def main
  
  puts "BIG BANG!"
  puts "Enter the name of a star:"
  name = gets.chomp
  solar_system = SolarSystem.new(name)
  
  puts "You've created a solar system around a star named #{solar_system.star_name}. Would you like to add some planets? (Y/N)"
  user_response = gets.chomp.upcase
  
  
  def upload_generic_list_of_planets(system)
    
    earth = Planet.new("Earth", "blue-green", 597200000000000000000000, 92960000, "Earth is home to many diverse species of flora and fauna")    
    
    pluto = Planet.new("Pluto", "orange", 1309000000000000000000, 5906380000, "Pluto gets its name from the Roman god of the underworld")
    
    neptune = Planet.new("Neptune", "sea-green",  102413000000000000000000000, 2973000000, "Neptune's interior is primarily composed of ice and rock")
    
    mercury = Planet.new("Mercury", "silver", 33011000000000000000000, 57910000, "The earliest known observations of Mercury are from an Assyrian astronomer around the 14th century BC")
    
    krypton = Planet.new("Krypton", "green", 49250000000000000000000000000, 100000000, "Despite its name, Krypton is not made of the element Kryptonite")
    
    system.planets << earth
    system.planets << neptune
    system.planets << mercury
    system.planets << pluto
    system.planets << krypton
    
    run_control_loop(system, "Y")
    
  end
  
  
  def add_a_new_planet(system, response)
    
    while response == "Y"
      puts "Enter the planet's name:"
      name = gets.chomp.to_s
      puts "Enter the planet's color:"
      color = gets.chomp.to_s
      puts "Enter the planet's mass in kg"
      mass = gets.chomp.to_f
      until mass > 0
        puts "Please enter a number greater than 0:"
        mass = gets.chomp.to_f
      end
      puts "Enter the planet's distance from the sun in km:"
      distance = gets.chomp.to_f
      until distance > 0
        puts "Please enter a number greater than 0:"
        distance = gets.chomp.to_f
      end
      puts "Enter a fun fact about the planet:"
      fun_fact = gets.chomp.downcase
      planet = Planet.new(name, color, mass, distance, fun_fact)
      system.planets << planet
      
      puts "You've added the planet #{name}. Would you like to add another planet? (Y/N)"
      response = gets.chomp.upcase
    end
    
    run_control_loop(system, response)
    
  end
  
  
  def run_control_loop(system, response)
    
    response = 0
    while response != 3
      puts "What would you like to do next? \n 1. list planets \n 2. learn details about a planet \n 3. add a planet \n 4. exit \nSelect 1, 2, 3, or 4:"
      response = gets.chomp.to_i
      case response
      when 1
        puts system.list_planets
      when 2
        puts "Which planet would you like to learn about? Enter the planet's name:"
        chosen_planet = gets.chomp
        puts system.find_planet_by_name(chosen_planet)
      when 3
        add_a_new_planet(system, "Y")
      when 4
        puts "Thanks for creating a solar system!"
        puts system.saturn
        exit
      else
        puts "That's not an option."
      end  
    end    
    
  end  

  
  if user_response == "Y"
    puts "Would you like to use a generic list of planets?(Y/N)"
    user_second_response = gets.chomp.upcase
    if user_second_response == "Y"
      upload_generic_list_of_planets(solar_system)
    else
      add_a_new_planet(solar_system, user_response)
    end
  elsif user_response == "N"
    run_control_loop(solar_system, user_response)
  else
    puts "Please enter Y or N:"
  end
  
end

main

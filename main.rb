require_relative 'lib/planet' 
require_relative 'lib/solar_system'

# # wave-1
# def main
#   planet_1 = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'only planet known to support life')
#   planet_2 = Planet.new('Mars', 'brownish-red', 6.4171e23, 2.2794e8, 'second smallest planet in the solar system behind Mercury')

#   puts planet_1.summary
#   puts "\n"
#   puts planet_2.summary
# end

# main
# puts "\n"

# # wave-2
# solar_system = SolarSystem.new('Sol')

# earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'only planet known to support life')

# solar_system.add_planet(earth)

# mars = Planet.new('Mars', 'brownish-red', 6.4171e23, 2.2794e8, 'second smallest planet in the solar system behind Mercury')

# solar_system.add_planet(mars)

# venus = Planet.new('Venus', 'yellowish-white', 4.867e24, 107523626, 'planet with longest rotation period of any planet in the Solar System and rotating in the opposite direction to most other planets')

# solar_system.add_planet(venus)

# list = solar_system.list_planets
# puts list
# puts "\n"

# found_planet = solar_system.find_planet_by_name('eARth')

# puts found_planet
# puts found_planet.summary

# puts "\n"
# puts solar_system.distance_between(mars, earth)

# wave-3
def main
  solar_system = SolarSystem.new('Sol')
  
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'only planet known to support life')
  solar_system.add_planet(earth)
  
  mars = Planet.new('Mars', 'brownish-red', 6.4171e23, 2.2794e8, 'second smallest planet in the solar system behind Mercury')
  solar_system.add_planet(mars)
  
  venus = Planet.new('Venus', 'yellowish-white', 4.867e24, 107523626, 'planet with longest rotation period of any planet in the Solar System and rotating in the opposite direction to most other planets')
  solar_system.add_planet(venus)
  
  control_panel = ['list planets', 'add planet', 'distance between', 'exit']
  control_panel_message = "Please select:"
  control_panel.each do |option|
    control_panel_message += "\n - #{option}"
  end
  
  puts "\nWelcome to our Solar System!"
  next_step = control_panel_helper(control_panel, control_panel_message)
  
  until next_step == 'exit'
    case next_step
    when 'list planets'
      puts "\n"
      list = solar_system.list_planets
      puts list
      next_step = control_panel_helper(control_panel, control_panel_message)
      
    when 'add planet'
      puts "\n"
      new_planet = add_a_planet
      solar_system.add_planet(new_planet)
      puts "\n"
      puts "A new planet has been added to our solar system!"
      puts "\n"
      puts new_planet.summary
      next_step = control_panel_helper(control_panel, control_panel_message)
      
    when 'distance between'
      puts "\n"
      puts "What is planet 1: "
      print ">> "
      user_input = gets.chomp
      planet_1 = find_a_planet(solar_system, user_input)
      puts "\n"
      
      puts "What is planet 2: "
      print ">> "
      user_input = gets.chomp
      planet_2 = find_a_planet(solar_system, user_input)
      puts "\n"
      
      distance_message = solar_system.distance_between(planet_1, planet_2)
      puts distance_message
      
      next_step = control_panel_helper(control_panel, control_panel_message)
    end
    
  end
  
  puts "\nThanks for using our Solar System!"
  puts "\n"

end

def add_a_planet
  print "Please provide the planet name: "
  print ">> "
  name = gets.chomp
  
  print "Please provide the planet color: "
  print ">> "
  color = gets.chomp
  
  print "Please provide the planet mass at kg: "
  print ">> "
  user_input = gets.chomp
  mass_kg = check_num(user_input.to_f)
  
  print "Please provide the distance from sun at km: "
  print ">> "
  user_input = gets.chomp
  distance_from_sun_km = check_num(user_input.to_f)
  
  print "Please provide a fun fact: "
  print ">> "
  fun_fact = gets.chomp
  
  new_planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
  
  return new_planet
  
end

def find_a_planet(solar_system, user_input)
  planet = solar_system.find_planet_by_name(user_input)
  until solar_system.planets.include?(planet)
    puts "\n"
    puts "This planet was not found!\nPlease re-input: "
    print ">> "
    user_input = gets.chomp
    planet = solar_system.find_planet_by_name(user_input)
  end
  return planet
end

def check_input(input, control_panel, control_panel_message)
  while !control_panel.include?(input)
    puts "\n"
    puts "Invalid input!\n#{control_panel_message}"
    print ">> "
    input = gets.chomp
  end
  return input
end

def check_num(input)
  while (input.class != Integer && input.class != Float) || input.to_f <= 0
    print "Invalid! Input is not a positive value.\nPlease re-input: "
    print ">> "
    input = gets.chomp
  end
  return input
end

def control_panel_helper(control_panel, control_panel_message)
  puts "\n"
  puts control_panel_message
  print ">> "
  user_input = gets.chomp
  next_step = check_input(user_input, control_panel, control_panel_message)
  return next_step
end

main
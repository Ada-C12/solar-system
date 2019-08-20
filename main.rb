require_relative "lib/planet"
require_relative "lib/solar_system"

def check_planet(planet_array)
  if planet_array.length == 1
    return planet_array[0]
  elsif planet_array == []
    return "There is no planet with that name."
  else
    puts "\nThere are multiple planets with that name:"
    
    planet_array.each_with_index do |planet, index|
      puts "#{index + 1}: #{planet.summary}"
    end
    
    #TODO Add error checking here
    print "Please select a number: "
    selection = gets.chomp.to_i - 1
    
    return planet_array[selection]
  end
end

def get_distance_between(solar_system)
  print "What is the first planet? "
  first_planet_name = gets.chomp.capitalize
  first_planet_array = solar_system.find_planet_by_name(first_planet_name)  
  verified_first_planet = check_planet(first_planet_array)
  
  if verified_first_planet.class == String
    return verified_first_planet
  end
  
  print "What is the second planet? "
  second_planet_name = gets.chomp.capitalize
  second_planet_array = solar_system.find_planet_by_name(second_planet_name)
  verified_second_planet = check_planet(second_planet_array)
  
  if verified_second_planet.class == String
    return verified_second_planet
  end
  
  distance = solar_system.distance_between(verified_first_planet, verified_second_planet)
  return "The distance between #{verified_first_planet.name} and #{verified_second_planet.name} is #{distance} km."
end

def get_planet_details(solar_system)
  print "Which planet are you interested in? "    
  planet_name = gets.chomp.capitalize  
  
  results = solar_system.find_planet_by_name(planet_name)
  
  if results == []
    return "This solar system does not have a planet named #{planet_name.capitalize}."
  elsif results.length == 1
    return results[0].summary
  else
    message = "\nThere are multiple planets with that name:"
    
    results.each do |planet|
      message << "\n#{planet.summary}"
    end
    
    return message
  end
end

def add_new_planet(solar_system)
  print "What is the planet's name?: "
  name = gets.chomp.capitalize
  
  print "What color is it?: "
  color = gets.chomp
  
  print "What is its mass in kg?: "
  mass_kg = gets.chomp.to_f
  
  until mass_kg > 0
    print "Please enter a mass in kg greater than 0: "
    mass_kg = gets.chomp.to_f
  end
  
  print "What is its distance from the sun in km?: "
  distance_from_sun_km = gets.chomp.to_f
  
  until distance_from_sun_km > 0
    print "Please enter a distance from sun in kg greater than 0: "
    distance_from_sun_km = gets.chomp.to_f
  end
  
  print "What is a fun fact about it?: "
  fun_fact = gets.chomp
  
  planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
  
  solar_system.add_planet(planet)
end

def main
  # Create some planets
  zorg = Planet.new("Zorg", "purple", 4.12e24, 57.9e6, "Planet has a roller coaster.")  
  tron = Planet.new("Tron", "blue", 3.56e24, 227.9e6, "Planet uses nuclear energy.")
  giga = Planet.new("Giga", "red", 8.34e24, 75.5e6, "Planet has no water.")
  duo = Planet.new("Duo", "green", 1.45e24, 18.5e6, "Planet has rain everyday.")
  tron_two = Planet.new("Tron", "green", 3.56e24, 100.7e6, "Planet uses solar energy.")
  
  # Create a solar system and add the planets
  solar_system = SolarSystem.new("Sun")
  solar_system.add_planet(zorg)
  solar_system.add_planet(tron)
  solar_system.add_planet(giga)
  solar_system.add_planet(duo)
  solar_system.add_planet(tron_two)
  
  puts "Welcome to Dianna's Solar System!"
  
  play = true
  
  while play
    print "\nYour options are 'list planets', 'distance between', 'planet details', 'add planet', or 'exit': "
    
    answer = gets.chomp.downcase
    
    case answer
    when "list planets"
      puts "\n"
      puts solar_system.list_planets
    when "distance between"
      puts get_distance_between(solar_system)
    when "planet details"
      puts get_planet_details(solar_system)
    when "add planet"
      add_new_planet(solar_system)
    when "exit"
      puts "Goodbye!"
      play = false
    else
      puts "Please choose a valid option."
    end
  end  
end

main

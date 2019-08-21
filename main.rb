require_relative 'lib/planet'
require_relative 'lib/solar_system'

def get_positive_number_from_user
  input = Integer(gets.chomp) rescue false
  while !input || input <= 0
    print "Invalid input. Input must be a positive number: "
    input = Integer(gets.chomp) rescue false
  end 
  return input  
end

def get_string_input_from_user()
  input = gets.chomp.strip.capitalize
  while input.empty?
    print "Input cannot be empty"
    input = gets.chomp.strip.capitalize
  end
  return input
end

def print_decisions(decisions)
  puts "Here are some options you can choose: "
  decisions.length.times do |index|
    puts "#{index + 1}. #{decisions[index].capitalize}"
  end
end

def get_decision(decisions)
  puts "\nWhat would you like to do next?"
  print_decisions(decisions)
  
  decision = get_string_input_from_user
  while !(decisions.include? decision)
    puts "Hey, that's not a valid decision"
    print_decisions(decisions)
    decision = get_string_input_from_user
  end
  return decision
end

def create_planet
  print "Please enter in your planet's name: "
  name = get_string_input_from_user

  print "Please enter in your planet's color: "
  color = get_string_input_from_user

  print "Please enter in your planet's mass_kg: "
  mass_kg = get_positive_number_from_user

  print "Please enter in your planet's distance from the sun: "
  distance = get_positive_number_from_user

  print "Please enter in your planet's fun fact: "
  fact = get_string_input_from_user

  return Planet.new(name: name, color: color, mass_kg: mass_kg, distance: distance, fact: fact)
end

def get_2_planet_names_from_user(solar_system)
  puts "Please enter in name of 2 planets of which you want to calculate the distance between: "
  user_planet_names = Array.new
  
  2.times do 
    print "Planet name: "
    planet = get_string_input_from_user

    while solar_system.find_planet_by_name(planet) == nil
      puts "This planet doesn't exist in our Solar System"
      puts solar_system.list_planets 
      print "Planet name: "
      planet = get_string_input_from_user
    end

    user_planet_names << planet
  end
  return user_planet_names
end

def main
  solar_system = SolarSystem.new('Sol')
  print "How many planets would you like to enter in: "
  number_of_planets = get_positive_number_from_user

  number_of_planets.times do |i|
    planet = create_planet
    solar_system.add_planet(planet)
  end
  
  available_decisions = ["Planet details", "Add planet", "List planets", "Calculate distance", "Exit"]
  while true
    user_decision = get_decision(available_decisions)

    case user_decision
    when "Calculate distance"
      planet_names = get_2_planet_names_from_user(solar_system)
      distance = solar_system.distance_between(planet_names[0],planet_names[1])
      puts "The distance between #{planet_names[0].capitalize} and #{planet_names[1].capitalize} is #{distance} km"
    
    when "Planet details"
      print "Please enter in name of a planet you want to look up in our Solar System: "
      user_planet = get_string_input_from_user 
      planet = solar_system.find_planet_by_name(user_planet)
      result_message = (planet == nil) ? "Oops, this planet doesn't exist in our Solar System" : "This is the first result we found in our Solar System about #{user_planet.capitalize}:\n #{planet.summary}"
      puts result_message
    
    when "Add planet"
      planet = create_planet()
      solar_system.add_planet(planet)
      puts solar_system.list_planets
    
    when "List planets"
      puts solar_system.list_planets
    
    else
      exit
    end
  end
end
main

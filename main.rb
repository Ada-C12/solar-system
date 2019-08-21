require_relative 'planet'
require_relative 'solar_system'

def main # Creates solar system and populates it
  
  # These loop options will be used later in the method to list for the user what they can do
  loop_options = ["list planets", "planet details", "add planet", "exit"]
  
  # Create and populate a solar system with 2 planets
  solar_system_1 = SolarSystem.new("Red Dwarf")
  
  planet_1 = Planet.new(name: "Din", color: "Pink", mass_kg: 237923789, distance_from_sun_km: 3278997897823575978987, fun_fact: "It's made out of cotton candy")
  
  solar_system_1.add_planet(planet_1)
  
  planet_2 = Planet.new(name: "Minnie", color: "orange", mass_kg: 780978, distance_from_sun_km: 9877984531234354, fun_fact: "It's made out of mustard")
  
  solar_system_1.add_planet(planet_2)
  
  # method that calls "find_planet_by_name" method from solar_system.rb
  # placed here because it needs to access to previously entered information
  def planet_details
    print "Enter the name of the planet you want to search for: "
    planet_search_term = gets.chomp.upcase
    return_statement = find_planet_by_name(planet_search_term)
    return return_statement
  end
  
  # method that manually enters planets into the previously established solar_system 
  # placed here because it needs to access to previously entered information
  def add_planet_manually
    print "What is the name of the planet you want to enter: "
    name_manual = gets.chomp
    print "What is its color? "
    color_manual = gets.chomp
    print "What is its mass: "
    mass_manual = gets.chomp.to_i
    print "What is its distance from the sun (km): "
    distance_from_sun_km_manual = gets.chomp.to_i
    print "What's a fun fact about this planet? "
    fun_fact_manual = gets.chomp
    
    user_planet = Planet.new(name: "#{name_manual}", color: "#{color_manual}", mass_kg: "#{mass_manual}", distance_from_sun_km: "#{distance_from_sun_km_manual}", fun_fact: "#{fun_fact_manual}")
    
    return user_planet
    
  end
  
  # Asks user what to pursue next using the options from LN 6
  # Calls secondary methods depending on the user input
  puts "What would you like to do next?"
  loop_options.each do |option|
    puts "\t #{option}"
  end
  eval = gets.chomp.downcase
  
  # Creates a loop that traps the user until they enter "exit" 
  # The user can enter multiple planets manually
  # The planets previously entered by the user are available in subsequent loops 
  until eval == "exit" do
    case eval
    when "list planets"
      solar_system_1.list_planets.each do |line|
        puts line
      end
      eval = nil
    when "planet details"
      puts solar_system_1.planet_details
      eval = nil
    when "add planet"
      solar_system_1.add_planet(add_planet_manually)
      solar_system_1.list_planets.each do |line|
        puts line
      end
      eval = nil
    else
      puts "What would you like to do next? "
      loop_options.each do |option|
        puts "\t #{option}"
      end
      eval = gets.chomp.downcase
    end
  end
  
end

main

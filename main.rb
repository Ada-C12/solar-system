require_relative 'planet'
require_relative 'solar_system'

def main # Creates solar system and populates it
  
  loop_options = ["list planets", "planet details", "add planet", "exit"]
  
  solar_system_1 = SolarSystem.new("Red Dwarf")
  
  planet_1 = Planet.new(name: "Din", color: "Pink", mass_kg: 237923789, distance_from_sun_km: 3278997897823575978987, fun_fact: "It's made out of cotton candy")
  
  solar_system_1.add_planet(planet_1)
  
  planet_2 = Planet.new(name: "Minnie", color: "orange", mass_kg: 780978, distance_from_sun_km: 9877984531234354, fun_fact: "It's made out of mustard")
  
  solar_system_1.add_planet(planet_2)
  
  puts "What would you like to do next?"
  loop_options.each do |option|
    puts "\t #{option}"
  end
  
  def planet_details
    print "Enter the name of the planet you want to search for: "
    planet_search_term = gets.chomp.upcase
    return_statement = find_planet_by_name(planet_search_term)
    return return_statement
  end
  
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
  
  eval = gets.chomp.downcase
  until eval == "exit" do
    if eval == "list planets"
      solar_system_1.list_planets.each do |line|
        puts line
      end
      eval = nil
    elsif eval == "planet details"
      puts solar_system_1.planet_details
      eval = nil
    elsif eval == "add planet"
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

# Ga-Young Jin, Cohort 12
# Monday, August 19th, 2019
# Week 3, Solar System Project

class SolarSystem
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end 
  
  attr_reader :star_name, :planets
  
  def add_planet(planet)
    @planets << planet
  end
  
  def list_planets
    planet_count = 1
    list = "\nPlanets orbiting #{star_name} \n"
    @planets.each do |planet|
      list = list + "#{planet_count}. #{planet.name} \n"
      planet_count += 1
    end
    return list
  end
  
  def planet_details
    puts "\nFor which planet would you like details?"
    chosen_planet = gets.chomp
    find_planet_by_name(chosen_planet)
  end
  
  def find_planet_by_name(search_planet_name)
    @planets.each do |planet|
      if search_planet_name.upcase == planet.name.upcase
        return planet.summary
      end
    end
    return "\nThere is no planet by that name." 
  end
  
  def add_new_planet
    puts "\nWhat is the name of this new planet?"
    new_name = gets.chomp
    puts "\nWhat is the color of this new planet?"
    new_color = gets.chomp
    puts "\nHow much does this new planet weigh in kilograms?"
    new_weight = gets.chomp
    puts "\nHow far is this new planet from the sun in kilometers?"
    new_distance = gets.chomp
    puts "\nWhat is a fun fact about this new planet?"
    new_fact = gets.chomp
    
    new_planet = Planet.new(new_name, new_color, new_weight, new_distance, new_fact) 
    add_planet(new_planet)
    
    puts "\nThe new planet, #{new_name}, was added to the list."
  end
end



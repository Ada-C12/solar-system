require 'pry'

class SolarSystem
  attr_reader :star_name, :planets
  
  # Constructor
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end
  
  def add_planet(planet)
    @planets << planet
    
  end
  
  def list_planets
    output_list = "Planets orbiting #{@star_name}: \n"
    
    @planets.length.times do |i|
      output_list += "#{i+1}. #{@planets[i].name.capitalize}\n"
    end
    
    return output_list
  end
  
  def find_planet_by_name(planet_name)
    @planets.each do |i|
      if i.name.downcase == planet_name.downcase 
        return i  
      end 
    end
    
    raise ArgumentError.new("Planet not found.")
    
  end
  
  def planet_details
    planet_choice = ""
    puts "\nWhich planet would you like to know about?"
    print "Planet: "
    planet_choice = gets.chomp.downcase
    
    found_planet = find_planet_by_name(planet_choice)
    puts found_planet.summary
  end
  
  
end

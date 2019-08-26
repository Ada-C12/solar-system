class SolarSystem

  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name

    @planets = []
  end

  #Create a method `SolarSystem#add_planet`, which will take an instance of `Planet` as a parameter and add it to the list of planets.
  def add_planet(planet)
    @planets << planet 
  end 

  def list_planets
    allplanets = ""

    puts "Planets orbiting #{star_name}"

    planets.each_with_index do |planet, index|
      allplanets += "#{index + 1}. #{(planet.name)} \n"
    end 

    return allplanets
  end

  #What should your method do if there is no planet with the given name?
  #What should your method do if there are multiple planets with the given name?
  
  def find_planet_by_name(planet_name)

  return planets.find { |planet| 
    planet.name.downcase == planet_name.downcase 
  }
  
  end
end 



# Wave 2

class SolarSystem
  attr_reader = :star_name, :planets

  def initialize(star_name)
    @star_name = star_name 
    @planets = []
  end

  def add_planet(planet)
    @planets.push(planet)
  end 

  def list_planets
    planet_array = []
    star_name = "Planets orbiting #{@star_name}"
    @planets.each_with_index do |planet, index|
      planet_array.push("#{index + 1}. #{planet.name}")
    end 
    return "#{star_name} \n#{planet_array.join("\n")}"
  end 

  # Create a method SolarSystem#find_planet_by_name, that takes 
  # the name of a planet as a string, and returns the corresponding 
  # instance of Planet. The lookup should be case-insensitive, so that Earth, 
  # earth and eArTh all return the same planet
  def find_planet_by_name(planet_string)
    @planets.each do |planet|
      if planet.name.upcase == planet_string.upcase
        return planet
      end 
    end 
  end
end



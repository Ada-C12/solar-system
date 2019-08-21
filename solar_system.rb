

class SolarSystem
  attr_reader :star_name, :planets
  attr_writer :planets
  # constructor
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end
  
  def add_planet(planet)
    @planets << planet
  end
  
  def list_planets 
    listing = "Planets orbiting #{ star_name } \n"
    @planets.each_with_index do |planet, i|
      listing += "#{ i+1 }. #{ planet.name } \n"
    end
    return listing
  end
  
  def find_planet_by_name(name)
    @planets.each do |planet_thing|
      if planet_thing.name.downcase == name.downcase
        return planet_thing
      end
    end
  end
  
end




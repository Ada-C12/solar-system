require_relative 'planet'

class SolarSystem
  
  # make star_name and planets readable (but not writable)
  attr_reader :star_name, :planets
  
  # add a constructor with parameter star_name
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end
  
  
  def add_planet(planet)
    # refactored to add entire planet object to planets array
    # (previous code just added the planet name)
    @planets << planet
  end
  
  def list_planets
    planet_strings = ""
    @planets.each_with_index do |planet, index|
      planet_strings = planet_strings + "#{index + 1}" + ". " + planet.name + "\n"
    end
    return "\nPlanets orbiting #{star_name}: " + "\n" + "#{planet_strings}" + "\n"
  end
  
  def find_planet_by_name(planet_name)
    # return planet object associated with name all downcawe
    @planets.each do |planet|
      if planet.name.downcase == planet_name.downcase
        return planet
      end
    end
  end
  
end



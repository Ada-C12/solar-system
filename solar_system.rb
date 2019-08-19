require_relative 'planet'

class SolarSystem
  
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
  end

  def list_planets
    return "Planets orbiting the #{star_name} are #{@planets}."
    #return "Planets orbiting #{@star_name}:"
    
    
    # \n1.Mercury\n2.Venus\n3.Earth\n4.Mars\n5.Jupiter
  end

end


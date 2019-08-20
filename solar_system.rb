class SolarSystem
  
  attr_reader :star_name, :planets
  
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end
  
  def add_planet(planet_instance)
    planet << planet_instance
  end
  
  def list_planets
    "Planets orbiting #{star_name}"
  end
  
  
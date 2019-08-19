class SolarSystem
  
  attr_reader :star_name, :planets
  
  def initialize(star_name, planets = [])
    @star_name = star_name
    @planets = planets
  end
  
  # def solarsystem#add_planet(planet)
  #   @planets << planet
  # end
  
end
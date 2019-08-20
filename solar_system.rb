#Wave2
class SolarSystem
  attr_reader :star_name, :planets
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets.push(planet)
  end

  def list_planets
    planet_names = "\nPlanets orbiting #{@star_name}"
    @planets.each_with_index do |planet, index|
      planet_names += "\n#{index + 1}. #{planet.name}" 
    end
    return planet_names 
  end

  
  def find_planet_by_name(planet_choice)
    @planets.each do |planet|
      if planet_choice.upcase == planet.name.upcase
        return planet
      end
    end
  end
end





















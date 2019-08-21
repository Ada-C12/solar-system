class SolarSystem
  
  attr_reader :star_name, :planets
  
  def initialize (star_name)
    @star_name = star_name
    @planets = []
  end
  
  def add_planet (planet)
    @planets.push planet
  end
  
  def list_planets
    place = @planets.map.with_index do |planet, index|
      "#{ index + 1 }. #{planet.name.capitalize}"
    end
    return place
  end
  
  def find_planet_by_name(planet_name)
    planet_name.upcase
    @planets.each do |planet|
      if planet_name.upcase == planet.name.upcase
        return planet.summary
      end
    end
  end
  
end

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
    "Planets orbiting #{ @star_name }\n" +
    @planets.map.with_index { |planet, index| "#{ index + 1 }.  #{ planet.name }" }
            .join('\n')
  end

  def find_planet_by_name(name)
    @planets.find { |planet| planet.name == name }
  end
end

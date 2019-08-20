class SolarSystem

  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    planets << planet
  end

  def list_planets
    planets_string = "Planets orbiting #{@star_name}:"
    count = 0
    @planets.map do |planet|
      count += 1
      planets_string = planets_string + "\n#{count}. #{planet.name}"
    end
    return planets_string
  end

  def find_planet_by_name(planet_to_find)
    @planets.map do |planet|
#CHECK BELOW CODE
      if planet.name.upcase == planet_to_find.upcase
        return planet.summary
      else
        return "That planet is not in this solar system."
      end
    end 
  end

end

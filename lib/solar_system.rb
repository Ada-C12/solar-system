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
    list_of_planets = "Planets orbiting #{@star_name}"
    @planets.each_with_index do |planet, num|
      list_of_planets << "\n#{num + 1}. #{planet.name}"
    end
    return list_of_planets
  end

  def find_planet_by_name(planet_name)
    found_planets = @planets.find_all do |planet|
      planet.name.casecmp? planet_name
    end
    return found_planets
  end

  def distance_between(planet_one, planet_two)
    p_one = find_planet_by_name(planet_one)
    p_two = find_planet_by_name(planet_two)
    return p_one[0].distance_from_sun_km - p_two[0].distance_from_sun_km
  end
end

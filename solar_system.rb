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
    string = "Planets orbiting #{star_name}\n"
    # why does item not need @ symbol
    @planets.each_with_index do |item, k|
      string << "#{k + 1}. #{item.name}\n"
    end
    return string
  end

  def find_planet_by_name(planet)
    found_planet = @planets.select { |item| item.name == planet.capitalize }
    if found_planet.length == 1
      return found_planet[0]
    elsif found_planet.length > 1
      raise ArgumentError, "Multiple matches found for the planet."
    else
      raise ArgumentError, "No match found for planet."
    end
  end
end

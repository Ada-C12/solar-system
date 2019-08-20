class SolarSystem
  attr_reader :star_name, :planets
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    raise ArgumentError.new "Invalid planet" if planet.class != Planet
    @planets.push(planet)
  end

  def list_planets
    list_planets = "Planets orbiting <star name>\n"
    i = 0
    @planets.each do |planet|
      list_planets += "#{i + 1}. #{planet.name}\n"
      i += 1
    end
    return list_planets
  end

  def find_planet_by_name(name)
    @planets.each do |planet|
      return planet if planet.name.downcase == name.downcase
    end
  end

  def distance_between(planet_1, planet_2)
    distance_between = (planet_1.distance_from_sun_km - planet_2.distance_from_sun_km).abs
    return "The distance between #{planet_1.name} and #{planet_2.name} is #{distance_between}km."
  end

end



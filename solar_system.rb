class SolarSystem
  attr_reader :star_name, :planets, :planet
  attr_reader :planets_list, :planets_list_formatted

  def initialize(star_name)
    @star_name = star_name
    @planets = planets
    @planets = []
    @planets_list = []
    @planet = planet
  end

  def add_planet(planet)
    @planets_list.push(planet)
  end

  def list_planets
    i = 1
    "Planets orbiting #{star_name}"
    @planets_list.each do |planet|
      @planets_list = "#{i}. #{planet.name}"
      return planets_list
      i += 1
    end
  end
end

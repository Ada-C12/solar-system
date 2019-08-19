class SolarSystem
  attr_reader :star_name, :planets
  attr_reader :planets_list, :planets_list_formatted

  def initialize(star_name)
    @star_name = star_name
    @planets = planets
    @planets = []
  end

  def add_planet(planet)
    @planets_list.push(planets)
    i = 0
    "Planets orbiting #{star_name}"
    planets_list.each do |planet|
      planets_list_formatted = "#{i}. #{planet.name}"
      return planets_list_formatted
    end
  end
end

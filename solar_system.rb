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
    n = 1
    # define list as a string
    planets_list = ""
    planets.each do |planet|
      # assign the new value to string
      planets_list += "#{n}. #{planet.name}\n"
      n += 1
    end
    return "Planets orbiting #{star_name}:\n" + "#{planets_list}"
  end

  def find_planet_by_name(name)
    planets.each do |planet|
      if planet.name == name.capitalize
        return planet
      end
    end
  end

end
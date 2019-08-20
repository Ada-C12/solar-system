class SolarSystem
  
  attr_reader :star_name, :planets

  def initialize(star_name, planets)
    @star_name = star_name
    @planets = planets
  end

  def add_planet(planet)
    @planets << planet
  end

  def list_planets
    i = 0
    planet_list = []
    planet_list << "Planets orbiting #{@star_name}:"
    @planets.each do |planet|
      planet_list << "#{i += 1}. #{planet.name}"
    end
    return planet_list 
  end

  def find_planet_by_name(planet_name)
  i=0
    @planets.each do |planet|
     if planet.name == planet_name.capitalize
      puts planet.name
      return @planets[i]
    end
    i += 1
  end
  end
end
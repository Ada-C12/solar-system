class SolarSystem

  attr_reader :star_name, :planets

  # constructor
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
  end
  
  def list_planets
    listing = "Planets orbiting #{@star_name}:\n"
    counter = 1
    @planets.each do |planet|
      planet_text = "#{counter}. #{planet.name}\n"
      listing += planet_text 
      counter +=1
    end
    return listing
  end

  def find_planet_by_name(planet_name)
    planet_array = []
    @planets.each do |planet|
      if planet.name.casecmp? planet_name
        planet_array << planet
      end
    return planet_array[0]
    end
  end

end
class SolarSystem
  attr_reader :star_name, :planets
  
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end
  
  def add_planet(planet)
    @planets << planet
  end

  def has_planets
    if @planets.length == 0
      return false
    else
      return true
    end
  end
  
  def list_planets
    if !has_planets
      return ("There are no planets listed as orbiting the star #{star_name.capitalize} in this solar system.").colorize(:red)
    else
      planet_list = @planets.map.with_index do |planet, index|
        "#{index + 1}. #{planet.name}"
      end
    
      planet_list = planet_list.join("\n")
      return "Planets orbiting #{star_name.capitalize}: \n#{planet_list}"
    end
  end
  
  def find_planet_by_name(input_found_planet)
    planet_names_all = []
    
    @planets.each do |planet|
      if input_found_planet == planet.name.downcase
        planet_names_all << planet
        # if input_plane_name matches 2 instances, only first instance will be returned
        return planet
      end
    end

    if planet_names_all.none? input_found_planet
      raise ArgumentError.new("That planet does not exist in this solar system.")
    end
  end

end

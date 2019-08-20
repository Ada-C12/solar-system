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
    planet_list = @planets.map.with_index do |planet, index|
      "#{index + 1}. #{planet.name}"
    end

    planet_list = planet_list.join("\n")

    return "Planets orbiting #{star_name} \n#{planet_list}"
  end

  def find_planet_by_name(input_planet_name)
    input_planet_name = input_planet_name.downcase
    planet_names_all = []

    @planets.each do |planet|
      if input_planet_name == planet.name.downcase
        planet_names_all << planet
        # if input_plane_name matches 2 instances, only first instance will be returned
        return planet
      end
    end
    
    if planet_names_all.none? input_planet_name
      raise ArgumentError.new("That planet does not exist in this solar system.")
    end 
  end

end

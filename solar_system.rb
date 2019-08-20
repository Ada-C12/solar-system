class SolarSystem
  attr_reader :star_name, :planets
  
  def initialize(star_name)
    # will accept star_name as numbers, maybe they're unnamed and it's just coords?
    if ([String, Integer, Float].include? star_name.class) && (star_name != '')
      @star_name = star_name.to_s 
      @planets = []
    else
      raise ArgumentError, "Invalid parameter: #{star_name}"
    end
  end
  
  def add_planet(planet_instance)
    if planet_instance.is_a? Planet
      unless @planets.include? planet_instance
        @planets << planet_instance
      else
        raise ArgumentError, "#{planet_instance.name} is already added"
      end
    else
      raise ArgumentError, "That ain't no planet!"
    end
  end
  
  def list_planets
    lines = ["Planets orbiting #{@star_name}"]
    @planets.each_with_index do |planet, index|
      lines << "#{index+1}. #{planet.name}"
    end
    return lines.join("\n")
  end
  
  
  def find_planet_by_name(planet_str)
    # given case-insens planet_str, returns corresp instance of Planet obj
    @planets.each do |planet|
      return planet if (planet_str.upcase == planet.name.upcase)
    end
    
    raise ArgumentError, "Planet #{planet_str.capitalize} does not exist in #{@star_name}'s solar system"
  end
  
  def distance_between(planet1_str, planet2_str)
    # assuming planets are in a straight line, returning absolute value of the difference for shortest possible distance
    
    # match arg string to the actual Planet obj
    # will raise error if not valid Planet obj
    planet1 = find_planet_by_name(planet1_str)
    planet2 = find_planet_by_name(planet2_str)
    
    dist1 = planet1.distance_from_sun_km
    dist2 = planet2.distance_from_sun_km
    return (dist1-dist2).abs
  end
  
end


# # starter pack
# require './planet'
# earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
# mars = Planet.new('Mars', 'red', 5.972e22, 1.495e8, 'It has aliens on it')
# solar_system = SolarSystem.new('Sun')
# solar_system.add_planet(earth)
# solar_system.add_planet(mars)
# p solar_system.distance_between('EARTH', 'mars')
class SolarSystem
  attr_reader :star_name, :planets
  
  def initialize(star_name)
    # will accept star_name as numbers, in case they're unnamed and it's just numerical coords or ids
    if ([String, Integer, Float].include? star_name.class) && (star_name != '')
      @star_name = star_name.to_s.capitalize 
      @planets = []
    else
      raise ArgumentError, "Invalid parameter: #{star_name}"
    end
  end
  
  def add_planet(planet_instance)
    # addes planet_instance to @ planets, after passing error checks (1. must be Planet obj, 2. must not be in @planets laready)
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
    # Returns a string of @planets summary
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
    planet1 = find_planet_by_name(planet1_str)
    planet2 = find_planet_by_name(planet2_str)
    
    dist1 = planet1.distance_from_sun_km
    dist2 = planet2.distance_from_sun_km
    return (dist1-dist2).abs
  end
  
end

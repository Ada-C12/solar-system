class SolarSystem
  attr_reader :planets
  def initialize(star_name)
    @star_name = star_name
    @planets = Array.new
  end

  def add_planet(planet)
    @planets << planet
  end

  def list_planets
    return \
      "Planets orbiting #{@star_name}\n" + \
      @planets.map.with_index {|planet,index| "#{index + 1}: #{planet.name}"}.join("\n")      
  end

end

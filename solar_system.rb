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
    list_planets = "Planets orbiting <#{@star_name}>: "
    @planets.each_with_index do |planet, index|
    puts "#{index + 1}: #{planet}"
    end
    
    return list_planets
  end

  def find_planet_by_name(planet_name)
    return @planets.find { |planet| planet.name.downcase == planet_name.downcase }
     
  end

end

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
    puts "Planets orbiting <#{@star_name}>: "
   
    return @planets.each_with_index do |planet, index|
    puts "#{index + 1}: #{planet.name}"
    end
  end

  def find_planet_by_name(planet_name)
    return @planets.find { |planet| planet.name.downcase == planet_name.downcase }  
  end
end

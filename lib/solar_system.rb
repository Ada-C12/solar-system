class SolarSystem
  attr_reader :star_name, :planets
  
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
  end

  def add_new_planet(planet_name)
    print "What is the color(s) of #{planet_name}? >"
    colors = gets.chomp 
    print "What is the mass of #{planet_name} in km? >"
    mass = gets.chomp.to_i
    print "What is the distance from the sun, in km? >"
    distance = gets.chomp.to_i
    print "What is a fun fact about #{planet_name}? >"
    fun_fact = gets.chomp
    user_planet = Planet.new(planet_name, colors, mass, distance, fun_fact)
    return user_planet
  end

  def list_planets
    print "Planets orbiting #{self.star_name}\n"
    @planet_list = self.planets.each_with_index.map{|planet, i| "#{i += 1}. #{planet.name}"}
    return @planet_list
  end

  def find_planet_by_name(planet_name)
    # @planets.each do |planet|
    #   if planet.name == planet_name.capitalize
    #     return planet
    #   end
    # end
    # return nil
    @planets.find {|planet| planet.name == planet_name.capitalize} 
  end
end
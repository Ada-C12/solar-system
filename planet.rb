# creates a class
class Planet
  
  # reader attributes 
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  
  # constructor
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end    
  
  # prints self
  def print_self
    print "#{self}"
  end
  
  # writes summary
  def summary
    return "Let's learn about #{name}. It is #{color}, it has a mass of #{mass_kg}, and it orbits #{distance_from_sun_km} kilometers from the sun. Fun fact: #{fun_fact}. "
  end
end
# Create a class called Planet - Each instance will keep track of information about a single planet
class Planet
  # Add a constructor to your Planet class - take in 5 parameters which are details about planet
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg 
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  # These instance variables should be readable from outside the class, but not writable
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  # summary method returns (not puts) a string containing a nicely-formatted description of the planet
  def summary
    return "\nPlanet: #{@name.capitalize} \nColor: #{@color} \nMass: #{@mass_kg} kg \nDistance from Sun: #{@distance_from_sun_km} km \nFun Fact: #{@fun_fact}\n "
  end
end

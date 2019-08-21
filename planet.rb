# Create a class called Planet - Each instance will keep track of information about a single planet
class Planet
  # Add a constructor to your Planet class - take in 5 parameters which are details about planet
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)  
    if name.class != String || color.class != String || fun_fact.class != String
      raise TypeError.new "Name, color, & funfact should be string inputs"
    elsif mass_kg.class == String || distance_from_sun_km.class == String
      raise TypeError.new "Mass & distance from sun should not be string inputs"
    elsif name == nil || color == nil || mass_kg == nil || distance_from_sun_km == nil || fun_fact == nil
      raise TypeError.new "None of the planet inputs should be nil"
    end

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

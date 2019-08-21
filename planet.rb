# Build a model of a solar system to practice working with classes.
# WAVE1 - practice working with individual instances of a single class.

class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end 
  
  def summary
    return """
    Planet #{@name} is #{@color}.
    Its total mass is #{@mass_kg}Kg and #{@name} is #{@distance_from_sun_km}km distant from the Sun.
    #{@name} is super awesome because... it is the #{@fun_fact}!!! 
    """
  end 
end 

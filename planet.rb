class Planet
  #  These instance variables should be readable from outside the class, but not writable.
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end
  
  def summary
    return "#{@name} is a #{@color} planet. #{@name}'s mass is #{@mass_kg}kg and is #{@distance_from_sun_km} kilometers from the sun. #{@name} #{@fun_fact.downcase}." # why does this work without @ symbol?
  end
  
end

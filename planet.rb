class Planet
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg 
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def summary
    return "\nPlanet: #{@name.capitalize} \nColor: #{@color} \nMass: #{@mass_kg} kg \nDistance from Sun: #{@distance_from_sun_km} km \nFun Fact: #{@fun_fact}\n "
  end
end

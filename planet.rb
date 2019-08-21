class Planet
  
  attr_accessor :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary
    return "Planet: #{@name}.\nColor: #{@color}.\nMass: #{@mass_kg} kg.\nDistance from Sun: #{@distance_from_sun_km} kms.\nFun fact: #{@fun_fact}.\n\n"
  end
end
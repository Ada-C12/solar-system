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
    return "#{@name} is a planet of the solar system.\nIt's color is #{@color}.\nIt's mass is #{@mass_kg} kg. and distance from sun #{@distance_from_sun_km} kms.\nA fun fact of this planet is that #{@fun_fact}.\n\n"
  end

end
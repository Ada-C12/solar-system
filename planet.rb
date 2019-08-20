class Planet
  attr_accessor :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact =  fun_fact
  end

  def summary
    return "#{@name} is the color #{@color} and has a mass of #{@mass_kg} kg. It is #{@distance_from_sun_km}km away from the sun and #{@fun_fact}"
  end

end

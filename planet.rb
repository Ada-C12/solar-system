class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name.capitalize
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact  
  end
  def summary
    return "#{@name.upcase} is #{@color}. It is "\
      "#{@distance_from_sun_km.round} km away from the sun, and "\
      "has a mass of #{@mass_kg.round} kg. #{@fun_fact}"
  end
end

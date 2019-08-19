class Planet

  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact, :sailor_moon_guardian

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact, sailor_moon_guardian)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
    @sailor_moon_guardian = sailor_moon_guardian
  end

end
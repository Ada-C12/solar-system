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

  def summary
    return "#{@name} is #{@color}, #{@mass_kg}kg, and #{@distance_from_sun_km}km from the Sun.\nOne fun_fact about #{@name}: #{fun_fact}.\nLast but not leaset, #{@name}'s Guardian: #{sailor_moon_guardian}"
  end

end
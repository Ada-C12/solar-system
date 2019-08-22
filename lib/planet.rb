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
    return "Name: #{self.name}\nColor: #{self.color}\nMass (kg): #{self.mass_kg}\nDistance from the Sun (km): #{self.distance_from_sun_km}\nFun Fact: #{self.fun_fact}"
  end
end


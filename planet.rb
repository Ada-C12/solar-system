class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  
  # Constructor
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg.to_f
    @distance_from_sun_km = distance_from_sun_km.to_f
    @fun_fact = fun_fact
    
  end
  
  def summary
    return "The planet #{self.name} is #{self.color}, has a mass of #{self.mass_kg}, and is #{self.distance_from_sun_km} km from the sun. Fun fact: #{@fun_fact}"
  end
  
  
end

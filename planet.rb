class Planet
  
  attr_reader :name, :color, :mass_kg, :distance_from_sum_km, :fun_fact
  
  #constructor
  def initiualize (name, color, mass_kg, distance_from_sum_km, fun_fact)
    @name = name
    @color = name
    @mass_kg = mass_kg
    @distance_from_sum_km = distance_from_sum_km
    @fun_fact = fun_fact
  end
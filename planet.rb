class Planet
  
  attr_reader :name, :color, :mass_kg, :distance_from_sum_km, :fun_fact
  
  #constructor
  def initialize (name, color, mass_kg, distance_from_sum_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sum_km = distance_from_sum_km
    @fun_fact = fun_fact
  end
  
  def summary
    return "#{self.name} is a #{self.color} planet that weighs #{self.mass_kg} kg and is #{self.distance_from_sum_km} km from the sun. Fun fact: #{self.fun_fact}."
  end
  
end
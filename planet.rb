class Planet
  
  attr_reader :name, :color, :mass_kg, :distance_from_sum_km, :fun_fact
  
  #constructor
  def initialize(name, color, mass_kg, distance_from_sum_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sum_km = distance_from_sum_km
    @fun_fact = fun_fact
  end
  
  def mass_check(mass_kg)
    p mass_kg
    while mass_kg < 0
      print "Plant mass must be greater than zero. Mass: "
      return @mass_kg = gets.chomp
    end
    return @mass_kg
  end
  
  def distance_check(distance_from_sum_km)
    while distance_from_sum_km < 0
      print "Distance from sun must be greater than zero. Distance: "
      return @distance_from_sum_km = gets.chomp
    end
    return @distance_from_sum_km
  end
  
  
  def summary
    return "#{self.name} is a #{self.color} planet that weighs #{mass_check(self.mass_kg)} kg and is #{distance_check(self.distance_from_sum_km)} km from the sun. Fun fact: #{self.fun_fact}."
  end
  
  
  
end
class Planet

  attr_reader :name, :color, :mass_kg, :distance_from_sun_kg, :fun_fact
  
  def initialize(name, color, mass_kg, distance_from_sun_kg, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_kg = distance_from_sun_kg
    @fun_fact = fun_fact 
  end

  # def greater_than_zero_kg
  #   distance_from_sun_kg < 1 ? ""
  # # return 
  # end 

  # def available?
  #   return quantity_in_stock > 0
  # end

  def summary 
    return "******Info about the planet #{@name}*******
    Color: #{@color}
    Distance from the sun: #{@distance_from_sun_kg} kg
    Fun fact: #{@fun_fact}
    Mass: #{@mass_kg} kg"
  end
end 
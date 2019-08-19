require 'pry' 

class Planet
  
  attr_reader :name, :color, :mass, :distance, :fun_fact
  
  def initialize(name, color, mass_kg, distance_from_sun, fun_fact)
    @name = name
    @color = color
    @mass = mass_kg
    @distance = distance_from_sun
    @fun_fact = fun_fact
  end
  
  def summary
    return "#{@name} is a #{@color} planet that is #{@distance} from the sun./nFun fact, #{@fun_fact}!"
  end
  
end  


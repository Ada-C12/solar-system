# class definition
class Planet
  attr_reader :name, :color, :mass, :distance, :fun_fact
  
  def initialize(name, color, size, distance, fun_fact)
    @name = name
    @color = color
    @mass = size
    @distance = distance
    @fun_fact = fun_fact
  end
  
  def summary
    return "Planet #{@name}: the color is #{@color}, with a mass of #{@mass}, approximatly #{@distance} from the Sun. #{@fun_fact}."
  end
end
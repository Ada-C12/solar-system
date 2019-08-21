

class Planet
  
  attr_reader :name, :color, :mass, :distance, :fun_fact
  
  def initialize (name, color, mass, distance, fun_fact)
    @name = name
    @color = color
    @mass = mass
    @distance = distance
    @fun_fact = fun_fact
  end
  
  def name
    return @name
  end
  
  def summary
    return "#{@name} is a #{@color} planet that is #{@distance} from the sun. Fun fact, #{@fun_fact}!"
  end
  
  
end  


# Solar-System : Classes Program
# Author: Farah Davoodi
# Email: farahdavoodi@gmail.com
# Date: August 19 2019

class Planet

  attr_accessor :name, :color, :mass_kg, :distance_from_sun, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun = distance_from_sun
    @fun_fact = fun_fact
  end

  def summary
    return "#{@name} has a hue of #{@color}. It has a mass of #{@mass_kg} and is #{@distance_from_sun} kilometers away from the Sun. Fun fact: #{@fun_fact}."
  end

end

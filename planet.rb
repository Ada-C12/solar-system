############## HELPER FUNCTION ##############
def getPosFloat(promptQ)
  # prompts user w/ promtQ string until acceptable float given, which is returned
  input_valid = false
  until input_valid == true
    print promptQ
    input = gets.chomp
    
    begin
      input = Float(input)
      if input > 0
        return input
      else
        puts "#{input} must be bigger than zero!"
      end
    rescue => exception
      puts "#{input} is not a number!"
    end
  end
end
############## end HELPER FUNCTION ##############


class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  
  def initialize(name, color, mass, distance, fun_fact)
    mass_info = {str: "mass", val: mass}
    dist_info = {str: "distance", val: distance}
    
    # ERROR CHECK:  1. Must be Float or Integer
    #               2. mass & distance must be > 0
    [mass_info, dist_info].each do |info_hash|
      
      if (info_hash[:val].is_a? Integer) || (info_hash[:val].is_a? Float)
        unless info_hash[:val] > 0
          info_hash[:val] = getPosFloat("Enter new value for #{info_hash[:str]}: ")
        end
      else 
        info_hash[:val] = getPosFloat("Enter new value for #{info_hash[:str]}: ")
      end
      
    end
    
    # @mass_kg and @distance_from_sun_km have been validated
    @mass_kg = mass_info[:val]
    @distance_from_sun_km = dist_info[:val]
    
    [name, color, fun_fact].each do |arg|
      if !(arg.is_a? String)
        raise ArgumentError, "#{arg} is not a string!"
      else
        @name = name.capitalize
        @color = color
        @fun_fact = fun_fact
      end
    end
  end
  
  def summary
    return "A planet called #{@name} is #{@color} and weighs #{@mass_kg}kg, it's #{@distance_from_sun_km}km away from the sun.  Fun Fact: #{@fun_fact}!"
  end
  
end

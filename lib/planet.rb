class Planet
    
    attr_reader :planet_name, :color, :mass_kg, :distance_from_sun, :fun_fact
    
    def initialize(planet_name, color, mass_kg, distance_from_sun, fun_fact)
        @planet_name = planet_name
        @color = color
        @mass_kg = mass_kg
        @distance_from_sun = distance_from_sun
        @fun_fact = fun_fact
        
        if @mass_kg <= 0
            raise ArgumentError.new "Invalid input must be greater than 0"
        end
    end 

    def summary
        return "#{@planet_name.upcase}: is #{@color} it has a mass of #{@mass_kg}kg, 
        it is #{@distance_from_sun}km from the sun. Here is a fun fact: #{@fun_fact}!"
    end
end
class Planet 
    attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
    def initialize (name:, color:, mass_kg:, distance_from_sun_km:, fun_fact:)
        @name = name 
        @color = color 
        @mass_kg = mass_kg
        @distance_from_sun_km = distance_from_sun_km
        @fun_fact = fun_fact 

        if @mass_kg <= 0 
            raise ArgumentError.new "invalid input less than 0 "
        end 

        if @distance_from_sun_km <= 0 
            raise ArgumentError.new "Invalid input less than 0"
        end 



        
    end
    
    def summary 
        return "The planet #{@name} is #{color}, has a mass of #{@mass_kg} in kgs, is #{@distance_from_sun_km} kilometers from the sun.\n A fun fact is #{fun_fact}" 
        
        
    end 
end 

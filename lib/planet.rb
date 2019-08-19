class Planet
    attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
    
    def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
        @name = name
        @color = color
        
        raise ArgumentError.new("Input must be a positive number") if mass_kg <= 0
        @mass_kg = mass_kg   
        
        raise ArgumentError.new("Input must be a positive number") if distance_from_sun_km <= 0
        @distance_from_sun_km = distance_from_sun_km
        
        @fun_fact = fun_fact
    end
    
    def summary
        return "Planet's name is #{@name}, it's #{@color}. Fun fact about #{name}: #{fun_fact}"
    end
end

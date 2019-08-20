class Planet
    attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
    
    def initialize(name: , color: , mass_kg:, distance:, fact:)
        @name = name
        @color = color
        
        raise ArgumentError.new("Planet mass_kg must be a positive number") if mass_kg <= 0
        @mass_kg = mass_kg   
        
        raise ArgumentError.new("Distance must be a positive number") if distance <= 0
        @distance_from_sun_km = distance
        
        @fun_fact = fact
    end
    
    def summary
        return "Planet's name is #{@name}, it's #{@color}. Fun fact about #{name}: #{fun_fact}"
    end
end

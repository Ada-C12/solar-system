
class SolarSystem 
    attr_reader :star_name, :planets
    def initialize (star_name)
        @star_name = star_name 
        @planets = []
        
        
    end 
    def add_planet (planet)
        @planets << planet
    end 
    def list_planets 
        puts "Planets orbiting #{@star_name}"
        i = 0 
        plist = @planets.map do |planet|
            i += 1
            "#{i}: #{planet.name}"
        end 
        plist   
    end 
    def find_planet_by_name (input_planet)
        p = @planets.select {|planet| planet.name.upcase == input_planet.upcase}
        if p.empty? 
            return "The planet is not in the list"
            
        else 
            return p[0]
        end 
    end 
    
    
end



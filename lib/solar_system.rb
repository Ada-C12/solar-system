
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
        planet_string = ""
        puts "Planets orbiting #{@star_name}"
        i = 0 
        @planets.each_with_index do |planet, i|
            
            planet_string += "#{i + 1}: #{planet.name} \n"
        end 
        return planet_string   
    end 
    def find_planet_by_name (input_planet)
        planets_found = @planets.select {|planet| planet.name.upcase == input_planet.upcase}
        if planets_found.empty? 
            return "The planet is not in the list"
            
        else 
            return planets_found[0]
        end 
    end 
    
    
end



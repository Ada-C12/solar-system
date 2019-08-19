require_relative "planet"

class SolarSystem
    attr_reader :star_name, :planets  

    def initialize(star_name)
        @star_name = star_name
        @planets = []
    end
  
    def add_planet(planet)
        @planets << planet
    end
    
    def list_planets
        planet_names = []
        @planets.each_with_index { |planet,index| planet_names << "#{index + 1}. #{planet.name}"}
        return "Planets orbiting #{star_name}\n#{planet_names.join("\n")}"
    end

    def find_planet_by_name(planet)
         @planets.each do |planet_instance|
            return planet_instance if planet.upcase == planet_instance.name.upcase
        end
    end

end  

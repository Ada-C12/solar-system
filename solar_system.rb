require_relative "planet"

class SolarSystem
    def initialize(star_name)
        @star_name = star_name
        @planets = []
    end

    attr_reader :star_name, :planets

    def add_planet(planet)
        @planets << planet
    end
    
    
    def list_planets
        planet_names = []
        @planets.each_with_index do |planet,index| 
            planet_names << "#{index + 1}. #{planet.name}"
        end
        return "Planets orbiting #{star_name}\n#{planet_names.join("\n")}"
    end
end   

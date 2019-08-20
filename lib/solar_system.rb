require_relative 'planet'

class SolarSystem
    attr_reader :star_name, :planets

    def initialize(star_name)
        @star_name = star_name 
        @planets = Array.new
    end
    
    def add_planet(planet)
        raise ArgumentError.new("Input must be a Planet!") if !(planet.instance_of? Planet)
        @planets << planet
    end
         
    def list_planets
        planets_list = "Planets orbiting #{@star_name}\n"
        @planets.length.times do |index|
            planets_list << "#{index + 1}. #{planets[index]}\n"
        end
        return planets_list
    end
end

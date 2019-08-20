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
    
end

require_relative 'planet'

class SolarSystem
    attr_reader :star_name, :planets
    
    def initialize(star_name)
        raise ArgumentError.new("Input must be a string for star name") if !(star_name.instance_of? String)
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
            planets_list << "#{index + 1}. #{planets[index].name.capitalize}\n"
        end
        return planets_list
    end
    
    def find_planet_by_name(planet_name)
        raise ArgumentError.new("Planet name must be a string") if !(planet_name.instance_of? String)
        planets_by_name = @planets.select {|obj| obj.name == planet_name.capitalize}
        planet = (planets_by_name.empty?) ? nil : planets_by_name[0]
        return planet
    end
    
    def distance_between(planet_name1, planet_name2)
        raise ArgumentError.new("Arguments must be strings") if !(planet_name1.instance_of? String) || !(planet_name2.instance_of? String)
        first_planet = find_planet_by_name(planet_name1)
        second_planet = find_planet_by_name(planet_name2)
        raise ArgumentError.new("Planet doesn't exist in this Solar System") if first_planet == nil || second_planet == nil
        return (first_planet.distance_from_sun_km - second_planet.distance_from_sun_km).to_i.abs
    end
end

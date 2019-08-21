class SolarSystem
    
    attr_reader :star_name, :planets, :name
    
    def initialize(star_name)
        @star_name = star_name
        @planets = []
    end
    
    def add_planet(planet_name)
        @planets.push(planet_name)
    end
    
    def list_planets
        puts "Planets orbiting #{@star_name}"
        array_planets = []
        @planets.each_with_index do |every_planet , index|
            array_planets.push("#{index + 1}. #{every_planet.planet_name}\n")
        end
        return  array_planets
    end
    
    def find_planet_by_name(input_planet)
        @planets.each do |each_planet|
            if input_planet.downcase == each_planet.planet_name
                return each_planet
            end
        end
    end     
end
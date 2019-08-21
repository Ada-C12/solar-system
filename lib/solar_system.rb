class SolarSystem
    attr_reader :star_name, :planets
    def initialize(star_name)
        @star_name = star_name
        @planets = []
    end   

    def add_planet(planet)
        @planets << planet
    end

# [Planet("Mercury"), Planet("Venus")]
    def list_planets
        output = "Planets orbiting #{star_name}\n"

        @planets.each_with_index do |planet, index|
            output += "#{index + 1}. #{planet.name}\n" 
        end 
        return output
    end

    def find_planet_by_name(planet_name)
        # return  
        @planets.each do |planet|           
            if planet_name.downcase == planet.name.downcase
                return planet
            end
        end
        return "No planet with the #{planet_name} in this solar system!"
       
    end

    # def distance_between(planet_one,planet_two)
    #     @planets.each do |planet_one,planet_two)
    #         distance = distance_between(planet_one,planet_two)
    #     return distance
    # end 



end



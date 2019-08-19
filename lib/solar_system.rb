class SolarSystem
    attr_reader :star_name, :planets
    def initialize(star_name)
        @star_name = star_name 
        @planets = Array.new
    end
end


class Planet
    attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

    def initialize(input_name, input_color, input_mass_kg, input_distance_from_sun_km, input_fun_fact)

        @name = input_name
        @color = input_color
        @mass_kg = input_mass_kg
        @distance_from_sun_km = input_distance_from_sun_km
        @fun_fact = input_fun_fact

        if @mass_kg <= 0
            raise ArgumentError.new("Invalid input")
        end

    end
 

    def summary

        return "#{name} planet is #{color} in color, its mass is #{mass_kg}, its #{distance_from_sun_km} far "

    end


end

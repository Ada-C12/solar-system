require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/skip_dsl'

require_relative '../lib/planet'

# Get that nice colorized output
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'Planet' do
    describe "Planet Constructor" do 
        it 'Takes input that describes planet characteristics' do
            venus = Planet.new("Venus", "green",5.972e24, 6.323e23, "It is really cold there." )
            expect(venus.planet_name).must_equal "Venus"
            expect(venus.planet_name).must_be_instance_of String
        end
        
        it 'checks to see if mass input is greater than zero' do
            venus = Planet.new("Venus", "green",5.972e24, 6.323e23, "It is really cold there.")
            expect(venus.mass_kg).must_be :>, 0
            expect(venus.mass_kg).must_be_instance_of Float
            
        end
        it 'checks to see if distance input is greater than zero' do
            venus = Planet.new("Venus", "green",5.972e24, 6.323e23, "It is really cold there.")
            expect(venus.distance_from_sun).must_be :>, 0
            expect(venus.distance_from_sun).must_be_instance_of Float
        end
        it 'checks to see if input for color has color as input' do
            venus = Planet.new("Venus", "green",5.972e24, 6.323e23, "It is really cold there.")
            expect(venus.color).must_be_instance_of String
            expect(venus.color).must_equal "green"
        end
        
        it 'checks to see if input for fun fact is String' do
            venus = Planet.new("Venus", "green",5.972e24, 6.323e23, "It is really cold there.")
            expect(venus.fun_fact).must_be_instance_of String
            expect(venus.fun_fact).must_equal "It is really cold there."
        end

        it 'checks to see if input for summary are strings' do
            venus = Planet.new("Venus", "green",5.972e24, 6.323e23, "It is really cold there.")
            expect(venus.summary).must_be_instance_of String
        end

        it 'raises an ArgumentError for invalid input for mass' do
        expect{Planet.new("Venus", "green",0, 6.323e23, "It is really cold there.")}.must_raise ArgumentError
        end
    end 
    
end
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/skip_dsl'

require_relative '../lib/planet'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "Planet class" do
    describe "Constructor" do
        it "Error checks input being passed in for mass_kg" do
            expect {Planet.new(name:'Earth', color: 'blue-green', mass_kg: -5.972e24, distance: 1.496e8, fact: 'Only planet known to support life')}.must_raise ArgumentError   
        end
        
        it "Error checks input being passed in for distance_from_sun_km" do
            expect {Planet.new(name:'Earth', color: 'blue-green', mass_kg: 5.972e24, distance: -1.496e8, fact: 'Only planet known to support life')}.must_raise ArgumentError   
        end
        
        it "Initializes instance variables" do
            earth = Planet.new(name:'Earth', color: 'blue-green', mass_kg: 5.972e24, distance: 1.496e8, fact: 'Only planet known to support life')
            expect (earth.name).must_equal 'Earth'
            expect (earth.fun_fact).must_equal 'Only planet known to support life'
            expect (earth.color).must_equal 'blue-green'
            expect (earth.mass_kg).must_equal 5.972e24
            expect (earth.distance_from_sun_km).must_equal 1.496e8
        end
        
        it "Does not allow reassigning instance variables" do
            earth = Planet.new(name:'Earth', color: 'blue-green', mass_kg: 5.972e24, distance: 1.496e8, fact: 'Only planet known to support life')
            expect (earth.name).must_equal 'Earth'
            expect (earth.fun_fact).must_equal 'Only planet known to support life'
            expect (earth.color).must_equal 'blue-green'
            expect (earth.mass_kg).must_equal 5.972e24
            expect (earth.distance_from_sun_km).must_equal 1.496e8
            
            expect {earth.color = 'pink'}.must_raise NoMethodError 
        end
    end
    
    describe "summary method" do
        it "Returns a string" do
            earth = Planet.new(name:'Earth', color: 'blue-green', mass_kg: 5.972e24, distance: 1.496e8, fact: 'Only planet known to support life')
            expect (earth.summary).must_be_instance_of String
        end
        
        it "Summarizes planet's information" do
            earth = Planet.new(name:'Earth', color: 'blue-green', mass_kg: 5.972e24, distance: 1.496e8, fact: 'Only planet known to support life')
            expect (earth.summary).must_equal "Planet's name is Earth, it's blue-green. Fun fact about Earth: Only planet known to support life"
        end            
    end
end


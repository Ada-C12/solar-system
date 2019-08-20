require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/skip_dsl'

require_relative '../lib/planet'


Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "Planet" do 
     # make a test for each attribute 
    it "check if first argument is used and string" do 
        venus = Planet.new("Venus", "yellow", 500, 600,"blah")
        expect (venus.name).must_be_instance_of String
        expect(venus.name).must_equal "Venus"
    end 
    it "check if mass_kg greater than 0 " do 
        venus = Planet.new("Venus", "yellow", 5.5e23, 6.2e13,"blah")
        expect(venus.mass_kg).must_be_instance_of Float 
        expect(venus.mass_kg).must_be :>, 0 
        
    end 
    
    it "check if distance_from_sun_km is greater than 0 " do 
        venus = Planet.new("Venus", "yellow", 5.5e10, 6.6e12,"blah")
        expect(venus.distance_from_sun_km).must_be_instance_of Float 
        expect(venus.distance_from_sun_km).must_be :>, 0 
    end 
    it "" do 
        venus = Planet.new("Venus", "yellow", 500, 600,"blah")
        
        expect (venus.color).must_be_instance_of String
        expect(venus.color).must_equal "yellow"
        
    end 
    
    it "raises argument error if mass_kg < 0 " do 
        
        
        expect{Planet.new("Venus","yellow",0,600,"blah")}.must_raise ArgumentError 
        
        
    end 

    it "raises argument error if distance_from_sun < 0" do 
        expect{Planet.new("Venus","yellow",5.5e23,0,"blah")}.must_raise ArgumentError


    end 

    
end 
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    









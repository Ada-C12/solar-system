require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/skip_dsl'

require_relative '../lib/planet'


Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "Planet" do 
     # make a test for each attribute 
    it "check if first argument is used and string" do 
        venus = Planet.new(name: "Venus", color: "yellow", mass_kg: 500, distance_from_sun_km:5.6e25,fun_fact:"blah")
        expect (venus.name).must_be_instance_of String
        expect(venus.name).must_equal "Venus"
    end 
    it "check if mass_kg greater than 0 " do 
        venus = Planet.new(name:"Venus",color:"yellow",mass_kg: 5.5e23,distance_from_sun_km:5.6e25,fun_fact:"one day on venus is longer than a year")
        
        expect(venus.mass_kg).must_be_instance_of Float 
        expect(venus.mass_kg).must_be :>, 0 
        
    end 
    
    it "check if distance_from_sun_km is greater than 0 " do 
        venus = Planet.new(name:"Venus",color:"yellow",mass_kg:5.5e23,distance_from_sun_km:5.6e25,fun_fact:"one day on venus is longer than a year")
        expect(venus.distance_from_sun_km).must_be_instance_of Float 
        expect(venus.distance_from_sun_km).must_be :>, 0 
    end 
    it "checks if string" do 
        venus = Planet.new(name: "Venus", color: "yellow", mass_kg: 5.5e23, distance_from_sun_km: 5.6e25, fun_fact: "one day on venus is longer than a year")
        
        expect (venus.color).must_be_instance_of String
        expect(venus.color).must_equal "yellow"
        
    end 
    
    it "raises argument error if mass_kg < 0 " do 
        
        
        expect{Planet.new(name: "Venus", color: "yellow",mass_kg: 0,distance_from_sun_km: 500 ,fun_fact:"one day on venus is longer than a year")}.must_raise ArgumentError 
        
        
    end 

    it "raises argument error if distance_from_sun < 0" do 
        expect{Planet.new(name:"Venus",color:"yellow",mass_kg:5.5e23,distance_from_sun_km: 0,fun_fact:"one day on venus is longer than a year")}.must_raise ArgumentError


    end 

    
end 
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    









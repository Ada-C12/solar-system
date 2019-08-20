# Tests

require 'minitest/autorun'
require 'minitest/reporters'

Minitest::Reporters.use!

require_relative '../lib/planet'
require_relative '../lib/main'
require_relative '../lib/solar_system'

describe "solar system" do
  describe "Planet class instance" do
    
    it "returns false for mass that equals 0" do
      earth = Planet.new("Earh", "blue-green", 0, 3, "is big")
      
      expect { earth.summary }.must_raise ArgumentError
      
    end
    
    it "returns false for distance that equals 0" do
      earth = Planet.new("Earh", "blue-green", 3, 0, "is big")
      
      expect{earth.summary}.must_raise ArgumentError
      
    end
    
  end
  
  describe "Find planet by name" do
    
    it "returns 'planet not found' if there is no planet with the inputted planet name" do
      solar_system = SolarSystem.new("Sol")
      solar_system.planets << Planet.new("earth", 1, 1, 1, 1)
      found_planet = solar_system.find_planet_by_name("Krypton")
      
      expect(found_planet).must_match "That planet is not in this solar system."
      
    end
    
    it "returns all planet summaries with the inputted planet name" do
      solar_system = SolarSystem.new("Sol")
      solar_system.planets << Planet.new("earth", "blue", 44, 23, "is smaller than the sun")
      solar_system.planets << Planet.new("Earth", "green", 22, 33, "is larger than a peanut")
      found_planet = solar_system.find_planet_by_name("earth")
      
      expect(found_planet[0..4]).must_match "earth"
      expect(found_planet.reverse[0..4]).must_match ".tuna"
      
    end
    
    
  end
  
end
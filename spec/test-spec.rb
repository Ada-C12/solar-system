# Tests

require 'minitest/autorun'
require 'minitest/reporters'

Minitest::Reporters.use!

require_relative '../lib/planet'
require_relative '../lib/main'
require_relative '../lib/solar_system'

describe "solar system project" do
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
  
  describe "Solar System class instance" do
    
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
      expect(found_planet.reverse[0..4]).must_match "tunae"
      
    end
    
    it "measures the distance between two planets" do
      solar_system = SolarSystem.new("Sol")
      krypton = Planet.new("Krypton", "green", 66, 98765, "is made of Kryptonite")
      krippton = Planet.new("Krippton", "purple", 55, 87654, "is populated by Krippaehnes")
      
      solar_system.planets << krypton
      solar_system.planets << krippton
      
      distance_between_krypton_and_krippton = solar_system.distance_between(krypton, krippton)
      
      expect(distance_between_krypton_and_krippton).must_equal 11111
      
    end
    
    it "measures the distance between two planets entered in reverse order" do
      solar_system = SolarSystem.new("Sol")
      krypton = Planet.new("Krypton", "green", 66, 98765, "is made of Kryptonite")
      krippton = Planet.new("Krippton", "purple", 55, 87654, "is populated by Krippaehnes")
      
      solar_system.planets << krypton
      solar_system.planets << krippton
      
      distance_between_krippton_and_krypton = solar_system.distance_between(krippton, krypton)
      
      expect(distance_between_krippton_and_krypton).must_equal 11111
      
    end
    
  end
  
end
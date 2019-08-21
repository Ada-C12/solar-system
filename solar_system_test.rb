require 'minitest/autorun'
require 'minitest/reporters'
require_relative 'solar_system'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new


describe "solar system" do
  describe "initialize method" do
    it "will create an empty list of planets" do
      solar_system = SolarSystem.new('Sol')
      
      expect(solar_system.planets).must_be_empty
    end
  end
  
  describe "add_planet method" do
    it "will takes an instance of `Planet` and add it to the list of planets" do
      solar_system = SolarSystem.new('Sol')
      planet = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
      solar_system.add_planet(planet)
      
      expect(solar_system.planets).must_include planet
    end
  end
  
  describe "list_planets" do
    it "will return a string" do
      solar_system = SolarSystem.new('Sol')
      planet = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
      solar_system.add_planet(planet)
      
      expect(solar_system.list_planets).must_be_instance_of String
    end
  end
  
  describe "find_planet_by_name" do
    it "will return the correct instance of `Planet`" do
      solar_system = SolarSystem.new('Sol')
      planet = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
      solar_system.add_planet(planet)
      
      expect(solar_system.find_planet_by_name('Earth')).must_equal planet
    end
    
    it "will support case-insensitve lookup" do
      solar_system = SolarSystem.new('Sol')
      planet = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
      solar_system.add_planet(planet)
      
      expect(solar_system.find_planet_by_name('earTH')).must_equal planet
    end
  end
end

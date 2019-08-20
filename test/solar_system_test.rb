require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/solar_system'

Minitest::Reporters.use!

describe "SolarSystem" do
  
  describe "initialize method" do
    
    it "creates an empty array" do
      
      # Arrange & Act
      test_solar_system = SolarSystem.new("Sol")
      
      # Assert
      expect(test_solar_system.planets).must_be_instance_of Array
      expect(test_solar_system.planets).must_be_empty
      
    end
    
  end
  
  describe "add_planet method" do
    
    it "returns an array" do
      
      # Arrange
      mars = Planet.new('Mars', 'red', 6.39e23, 2.279e8, 'Named after the Roman god of war')
      test_solar_system = SolarSystem.new("Sol")
      
      # Act
      test_solar_system.add_planet(mars)
      
      # Assert
      expect(test_solar_system.planets).must_be_instance_of Array
      
    end
    
    it "returns a collection that includes the added planet" do
      
      # Arrange
      earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
      test_solar_system = SolarSystem.new("Sol")
      
      # Act
      test_solar_system.add_planet(earth)
      
      # Assert
      expect(test_solar_system.planets).must_include earth
      
    end
    
  end
  
  describe "list_planets method" do
    
    it "returns a string" do
      
      # Arrange
      earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
      mars = Planet.new('Mars', 'red', 6.39e23, 2.279e8, 'Named after the Roman god of war')
      test_solar_system = SolarSystem.new("Sol")
      test_solar_system.add_planet(earth)
      test_solar_system.add_planet(mars)
      
      # Act
      result = test_solar_system.list_planets
      
      # Assert
      expect(result).must_be_instance_of String
      
    end
    
  end
  
  describe "find_planet_by_name method" do
    
    it "returns the correct instance of Planet regardless of input case" do
      
      # Arrange
      mars = Planet.new('Mars', 'red', 6.39e23, 2.279e8, 'Named after the Roman god of war')
      test_solar_system = SolarSystem.new("Sol")
      test_solar_system.add_planet(mars)
      
      # Act
      found_planet = test_solar_system.find_planet_by_name("MaRs")
      found_planet_2 = test_solar_system.find_planet_by_name("mars")
      
      # Assert
      expect(found_planet).must_equal mars
      expect(found_planet_2).must_equal mars
      
    end
    
    it "returns an error message if there is no planet by the entered name" do
      
      # Arrange
      mars = Planet.new('Mars', 'red', 6.39e23, 2.279e8, 'Named after the Roman god of war')
      test_solar_system = SolarSystem.new("Sol")
      test_solar_system.add_planet(mars)
      
      # Act
      found_planet = test_solar_system.find_planet_by_name("Venus")
      
      # Assert
      expect(found_planet).must_equal "Sorry, there was no planet found by the name you entered."
      
    end
    
  end
  
  
end
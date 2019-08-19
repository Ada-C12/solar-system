require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../planet'

Minitest::Reporters.use!

describe "Planet" do
  
  describe "summary method" do
    it "will return a string" do
      
      #Arrange
      test_planet = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
      
      #Act
      string = test_planet.summary
      
      #Assert
      expect(string).must_be_instance_of String
      
    end
    
  end
  
  describe "initialize method" do
    
    it "will raise an error if mass is less than 0" do
      
      # Arrange, Act & Assert - you can't act early or it will raise an error too soon
      expect{
        Planet.new('Earth', 'blue-green', -5.972e24, 1.496e8, 'Only planet known to support life')
      }.must_raise ArgumentError
      
    end
    
    it "will raise an error if distance from the sun is less than 0" do
      
      # Arrange, Act & Assert - you can't act early or it will raise an error too soon
      expect{
        Planet.new('Earth', 'blue-green', 5.972e24, -1.496e8, 'Only planet known to support life')
      }.must_raise ArgumentError
      
    end
    
    it "will raise an error if mass is not a number" do
      
      # Arrange, Act & Assert - you can't act early or it will raise an error too soon
      expect{
        Planet.new('Earth', 'blue-green', "Abc", 1.496e8, 'Only planet known to support life')
      }.must_raise ArgumentError
      
    end
    
    it "will raise an error if distance from the sun is not a number" do
      
      # Arrange, Act & Assert - you can't act early or it will raise an error too soon
      expect{
        Planet.new('Earth', 'blue-green', 5.972e24, "Twelve kg", 'Only planet known to support life')
      }.must_raise ArgumentError
      
    end
    
  end
  
end
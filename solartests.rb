require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'

require_relative 'solar_system'
require_relative 'planet'



Minitest::Reporters.use! 
Minitest::Reporters::SpecReporter.new


describe 'find_planet_by_name_tests' do
  it 'planet should not be nil' do
    # Arrange
    solar_system = SolarSystem.new('Sol')
    input_planet = nil
    
    # Assert
    expect{solar_system.find_planet_by_name(input_planet)}.must_raise TypeError
  end


  it 'planet input should be string' do
    # Arrange
    solar_system = SolarSystem.new('Sol')
    input_planet = 45
    
    # Assert
    expect{solar_system.find_planet_by_name(input_planet)}.must_raise TypeError
  end

  it 'takes string, and returns corresponding instance of Planet' do
    # Arrange
    solar_system = SolarSystem.new('Sol')
    earth = Planet.new('earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
    solar_system.add_planet(earth)
    input_planet = "earth"

    # Act
    result = solar_system.find_planet_by_name(input_planet)

    # Assert
    expect(result).must_be_instance_of Planet
  end    

  it 'lookup should be case-insensitive' do
      # Arrange
      solar_system = SolarSystem.new('Sol')
      earth = Planet.new('earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
      solar_system.add_planet(earth)
      input_planet = "eArTh"
  
      # Act
      result = solar_system.find_planet_by_name(input_planet)
  
      # Assert
      expect(result).must_be_instance_of Planet
    end
end
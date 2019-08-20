require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'

require_relative 'solar_system'
require_relative 'planet'



Minitest::Reporters.use! 
Minitest::Reporters::SpecReporter.new

# Tests for initialize method in solar_system
describe 'initialize_tests' do
  it 'takes star_name parameter and saves it as an instance variable' do
    # Arrange
    input = 'Sol'
    solar_system = SolarSystem.new(input)

    # Act
    result = solar_system.star_name

    # Assert
    expect(result).must_equal input
  end

  it 'creates new empty array called planets' do
    input = 'Sol'
    solar_system = SolarSystem.new(input)

    result = solar_system.planets

    expect(result).must_equal []
  end

  it "raise error if star_name not a string" do
    expect{SolarSystem.new(4)}.must_raise TypeError
  end
  
  it "raise error if star_name is nil" do
    expect{SolarSystem.new(nil)}.must_raise TypeError
  end
end


# Tests for add_planet in solar_system
# Tests for list_planets in solar_system
# Tests for find_planet_by_name in solar_system
# Tests for distance_between in solar_system





# Tests for find_planet_by_name method in solar_system
describe 'find_planet_by_name_tests' do
  it 'planet should not be nil' do
    solar_system = SolarSystem.new('Sol')
    input_planet = nil
    
    expect{solar_system.find_planet_by_name(input_planet)}.must_raise TypeError
  end

  it 'planet input should be string' do
    solar_system = SolarSystem.new('Sol')
    input_planet = 45
    
    expect{solar_system.find_planet_by_name(input_planet)}.must_raise TypeError
  end

  it 'takes string, and returns corresponding instance of Planet' do
    solar_system = SolarSystem.new('Sol')
    earth = Planet.new('earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
    solar_system.add_planet(earth)
    input_planet = "earth"

    result = solar_system.find_planet_by_name(input_planet)

    expect(result).must_equal earth
  end    

  it 'lookup should be case-insensitive' do
      solar_system = SolarSystem.new('Sol')
      earth = Planet.new('earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
      solar_system.add_planet(earth)
      input_planet = "eArTh"
  
      result = solar_system.find_planet_by_name(input_planet)
  
      expect(result).must_be_instance_of Planet
    end
end
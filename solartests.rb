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
describe 'add_planet_tests' do
  it 'planet input should be instance of class Planet' do
    solar_system = SolarSystem.new('Sol')
    earth = Planet.new('earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
    input_planet = "earth"
    
    expect{solar_system.add_planet(input_planet)}.must_raise TypeError
  end

  it 'planet input should not be nil' do
    solar_system = SolarSystem.new('Sol')
    earth = Planet.new('earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
    input_planet = nil
    
    expect{solar_system.add_planet(input_planet)}.must_raise TypeError
  end

  it 'takes parameter and adds it to the list of planets' do
    solar_system = SolarSystem.new('Sol')
    earth = Planet.new('earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
    saturn = Planet.new('saturn', 'yellow-brown', 5.683e26, 1.434e9, 'Best known for its fabulous ring system')
    
    solar_system.add_planet(earth)
    solar_system.add_planet(saturn)

    expect(solar_system.planets).must_equal [earth,saturn]
  end
end

# Tests for list_planets in solar_system


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


# Tests for distance_between in solar_system
describe 'distance_between_tests' do
  it 'planet1 should not be nil' do
    solar_system = SolarSystem.new('Sol')
    earth = Planet.new('earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
    saturn = Planet.new('saturn', 'yellow-brown', 5.683e26, 1.434e9, 'Best known for its fabulous ring system')
      
    solar_system.add_planet(earth)
    solar_system.add_planet(saturn)
    
    planet_1 = nil
    planet_2 = "saturn"

    expect{solar_system.distance_between(planet_1, planet_2)}.must_raise TypeError
  end

  it 'planet1 input should be string' do
    solar_system = SolarSystem.new('Sol')
    earth = Planet.new('earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
    saturn = Planet.new('saturn', 'yellow-brown', 5.683e26, 1.434e9, 'Best known for its fabulous ring system')
      
    solar_system.add_planet(earth)
    solar_system.add_planet(saturn)
    
    planet_1 = earth
    planet_2 = "saturn"

    expect{solar_system.distance_between(planet_1, planet_2)}.must_raise TypeError
  end
  
  it 'planet2 should not be nil' do
    solar_system = SolarSystem.new('Sol')
    earth = Planet.new('earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
    saturn = Planet.new('saturn', 'yellow-brown', 5.683e26, 1.434e9, 'Best known for its fabulous ring system')
      
    solar_system.add_planet(earth)
    solar_system.add_planet(saturn)
    
    planet_1 = "earth"
    planet_2 = nil

    expect{solar_system.distance_between(planet_1, planet_2)}.must_raise TypeError
  end

  it 'planet2 input should be string' do
    solar_system = SolarSystem.new('Sol')
    earth = Planet.new('earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
    saturn = Planet.new('saturn', 'yellow-brown', 5.683e26, 1.434e9, 'Best known for its fabulous ring system')
      
    solar_system.add_planet(earth)
    solar_system.add_planet(saturn)
    
    planet_1 = "earth"
    planet_2 = saturn

    expect{solar_system.distance_between(planet_1, planet_2)}.must_raise TypeError
  end

  it 'result should be positive number' do
    solar_system = SolarSystem.new('Sol')
    earth = Planet.new('earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
    saturn = Planet.new('saturn', 'yellow-brown', 5.683e26, 1.434e9, 'Best known for its fabulous ring system')
      
    solar_system.add_planet(earth)
    solar_system.add_planet(saturn)
    
    planet_1 = "earth"
    planet_2 = "saturn"
    
    result = solar_system.distance_between(planet_1, planet_2)
    expect(result).must_be :>, 0
  end
  
  it 'takes two planet names and returns distance between them' do
    solar_system = SolarSystem.new('Sol')
    earth = Planet.new('earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
    saturn = Planet.new('saturn', 'yellow-brown', 5.683e26, 1.434e9, 'Best known for its fabulous ring system')
      
    solar_system.add_planet(earth)
    solar_system.add_planet(saturn)
    
    planet_1 = "earth"
    planet_2 = "saturn"
    
    result = solar_system.distance_between(planet_1, planet_2)
    expect(result).must_equal 1284400000.0
  end
end
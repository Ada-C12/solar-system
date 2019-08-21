require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'

require_relative '../solar_system'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'Solar System class' do
  it 'can store multiple planets in a planet array' do
    # Arrange
    solar_system = SolarSystem.new('Io')
    
    pluto = Planet.new('Pluto', 'blue', 1000, 10, 'it is a controversial planet pick')
    solar_system.add_planet(pluto)
    
    kuiper_belt = Planet.new('Kuiper Belt', 'gray', 10, 19, 'it is not a planet at all just rocks')
    solar_system.add_planet(kuiper_belt)
    
    # Act/Assert
    expect(solar_system.planets.length).must_equal 2 
  end 
  
  it 'successfully calculates distance between planets' do
    
    # Arrange
    solar_system = SolarSystem.new('Io')
    
    pluto = Planet.new('Pluto', 'blue', 1000, 10, 'it is a controversial planet pick')
    solar_system.add_planet(pluto)
    
    kuiper_belt = Planet.new('Kuiper Belt', 'gray', 10, 19, 'it is not a planet at all, just rocks')
    solar_system.add_planet(kuiper_belt)
    
    # Assert
    expect(solar_system.distance_between(pluto, kuiper_belt)).must_equal 9
  end
end 

#   it 'contains a color' do
#     # Arrange
#     hand = [3, 'Ace']

#     # Act
#     score = blackjack_score(hand)

#     # Assert
#     expect(score).must_equal 14
#   end

#   it 'raises an ArgumentError for masses less than 0 kg' do
#     expect {
#       Planet.new('Earth', 'blue-green', 0, 29478594, 'Only planet known to support life')
#     }.must_raise ArgumentError
#   end

#   it 'raises an ArgumentError for distances less than 0 km' do
#     expect {
#       Planet.new('Earth', 'blue-green', 4964903, 0, 'Only planet known to support life')
#     }.must_raise ArgumentError
#   end
# end 
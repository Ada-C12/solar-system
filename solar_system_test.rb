require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'

require_relative 'planet'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'Planet' do
  it 'outputs a summary' do
    # Arrange
    earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'It\'s the only planet known to support life.')
    # Act
    summary = earth.summary
    # Assert
    expect(summary ).must_include "The glorious planet Earth is blue-green-colored and has a mass of 5.972e+24 kilograms. It is 149600000.0 kilometers from the sun. And wouldn't you like to know a fun fact about Earth? It's the only planet known to support life."
  end

  it 'requests a positive number if a negative number is given for mass' do
    # Arrange
    earth = Planet.new('Earth', 'blue-green', -5.972e24, 1.496e8, 'It\'s the only planet known to support life.')
    # Act
    
  end


  it 'requests a positive number if a negative number is given for distance' do
  end

end

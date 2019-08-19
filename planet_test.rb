require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'

require_relative 'planet'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new 

describe 'Planet' do
  it 'can output a summary' do
    
    # Arrange
    earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
    
    # Act
    summary = earth.summary
    
    # Assert
    expect summary.must_equal "The planet Earth is blue-green in color and weighs 5.972e+24 kilograms."
    
    # Add more tests to validate input
    
  end
end
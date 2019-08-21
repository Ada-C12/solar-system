require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'

require_relative '../lib/main'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'main' do
  it 'mass_kg must be numbers that are greater than zero' do

    # Arrange
    earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'it is the only planet known to support life')

    # Act
    mass_kg = earth.mass_kg

    # Assert
    expect(mass_kg > 0)

  end

  it 'raises an ArgumentError for a zero mass planet' do
    expect {
      Planet.new('Earth', 'blue-green', 0, 1.496e8, 'it is the only planet known to support life')
    }.must_raise ArgumentError
  end

  it 'distance_from_sun_km must be numbers that are greater than zero' do

    # Arrange
    earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'it is the only planet known to support life')

    # Act
    distance_from_sun_km = earth.distance_from_sun_km

    # Assert
    expect(earth.distance_from_sun_km > 0)

  end


end
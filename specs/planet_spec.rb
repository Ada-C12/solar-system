require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'

require_relative '../lib/planet.rb'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'the Planet class' do
  
  it 'must create a new planet instance' do
  end
  
  it 'must create reader methods' do
  end
  
  it 'must create writer methods' do
  end
  
  it 'thows an error if given an insufficient value for mass' do
    expect {
      planet = Planet.new("Name", "color", mass_kg: 0, distance_from_sun_km: 20, fun_fact: "none")
    }.must_raise ArgumentError
  end
  
  it 'thows an error if given an insufficient value for distance' do
  end
  
end
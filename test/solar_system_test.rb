require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/skip_dsl'

require_relative '../lib/solar_system'

# Get that nice colorized output
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'Solar system' do
  
  it 'initializes solar system correctly' do
    our_solar_system = SolarSystem.new('Sun')
    
    expect(our_solar_system).must_be_instance_of SolarSystem
  end
  
  it 'adds planets correctly' do
    our_solar_system = SolarSystem.new('Sun')
    
    test = our_solar_system.add_planet('')
    
    expect(test).must_be_instance_of Array
  end
end
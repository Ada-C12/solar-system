require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/skip_dsl'

require_relative '../lib/planet'

# Get that nice colorized output
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'Planet' do
  
  it 'initializes planet correctly' do
    
    expect(Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life.')).must_be_instance_of Planet
    
  end
  
  it 'prints summary correctly' do
    earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life.')
    
    summary = earth.summary
    
    expect(summary).must_equal "Earth is blue-green and is 5.972e+24.  It is 149600000.0 from the sun.  Here's a fun fact: Only planet known to support life."
  end
end
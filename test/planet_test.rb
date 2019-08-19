require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/skip_dsl'

require_relative '../lib/planet'

# Get that nice colorized output
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'Planet' do
  describe "initialize method" do
    it "correctly initializes a planet" do
      earth = Planet.new('Earth', 'blue-green', 500, 100, 'Only planet known to support life.')
      
      expect(earth.name).must_equal "Earth"
      expect(earth.color).must_equal "blue-green"
      expect(earth.mass_kg).must_equal 500
      expect(earth.distance_from_sun_km).must_equal 100
      expect(earth.fun_fact).must_equal "Only planet known to support life."
    end
    
    it "throws an error if mass_kg is an invalid number" do
      expect {Planet.new('Earth', 'blue-green', 0, 100, 'Only planet known to support life.')}.must_raise ArgumentError
    end
    
    it "throws an error if distance_from_sun_km is an invalid number" do
      expect {Planet.new('Earth', 'blue-green', 500, -5, 'Only planet known to support life.')}.must_raise ArgumentError
    end
  end
  
  describe "summary method" do
    it "correctly returns a planet summary" do
      earth = Planet.new('Earth', 'blue-green', 500, 100, 'Only planet known to support life.')
      
      expect(earth.summary).must_equal "Planet: Earth, Color: blue-green, Mass: 500 kg, Distance from sun: 100 km, Fun fact: Only planet known to support life."
    end
  end
end

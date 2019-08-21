# planet_spec.rb

require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../solar-system/planet.rb'

Minitest::Reporters.use!

describe "planet" do
  it "will raise an error when given an invalid argument" do 
    expect {
      initialize("Earth", "Blue", 0, 10, "yo")
    }.must_raise ArgumentError
    
    expect {
      initialize("Earth", "Blue", 10, "egg", "yo")
    }.must_raise ArgumentError
  end
  
  it "will successfully build a planet with given arguments" do
    planet = Planet.new("Earth", "Blue", 10, 9, "taro lives here")
    
    expect (planet.name).must_equal "Earth"
    expect (planet.color).must_equal "Blue"
    expect (planet.mass_kg).must_equal 10
    expect (planet.distance_from_sun_km).must_equal 9
    expect (planet.fun_fact).must_equal "taro lives here"
    
  end
  
  
end

require './planet'

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

describe "TESTING planet.rb" do
  # Planet.new(name, color, mass, distance, fun_fact)
  
  
  it "Tests for valid planet" do
    p1 = Planet.new('faketopia', 'rainbow', 100, 200, 'this should work!')
    assert(p1.name == 'faketopia')
    assert(p1.color == 'rainbow')
    assert(p1.mass_kg == 100)
    assert(p1.distance_from_sun_km == 200)
    assert(p1.fun_fact == 'this should work!')
  end
  
  it "Tests for invalid args" do
    expect {
      Planet.new()
    }.must_raise ArgumentError
    
    expect {
      Planet.new('only 1 arg here')
    }.must_raise ArgumentError
    
    expect {
      Planet.new(123)
    }.must_raise ArgumentError
    
    expect {
      Planet.new('a', 'b', 100, 200)
    }.must_raise ArgumentError
  end
  
  it "Test for valid mass arg" do
    # Planet.new() has built-in methods to keep prompting until valid args given
    p2 = Planet.new("A", "B", -1, -2, "C")
    assert(p2.mass_kg > 0)
    assert(p2.distance_from_sun_km > 0)
  end
  
end

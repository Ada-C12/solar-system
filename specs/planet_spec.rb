require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/planet.rb'

Minitest::Reporters.use!

describe "planet" do
  it "will create Planet" do
    example = Planet.new("Earth", "green", 2, 2, "The Earth is round")
    
    expect(example).must_be_instance_of Planet
  end
  
  it "will not accept invalid weight" do
    expect {
      Planet.new("Earth", "green", -2, 2, "The Earth is round")
    }.must_raise ArgumentError
  end
  
  it "will not accept invalid distance" do
    expect {
      Planet.new("Earth", "green", 2, -2, "The Earth is round")
    }.must_raise ArgumentError
  end
  
  it "generates summary" do
    example = Planet.new("Earth", "green", 2, 2, "The Earth is round")
    
    expect(example.summary).must_equal "\nEarth is a planet that is green in color, weighs 2 kg, and sits 2 km from the sun. Interesting fact about Earth: The Earth is round."
  end
  
end


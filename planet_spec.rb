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
      initialize("Earth", "Blue", 10, 0, "yo")
    }.must_raise ArgumentError
  end
  
end

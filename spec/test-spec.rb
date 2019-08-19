# Tests

require 'minitest/autorun'
require 'minitest/reporters'

Minitest::Reporters.use!

require_relative '../lib/planet'
require_relative '../lib/main'

describe "Planet class instance" do

  it "returns false for mass that equals 0" do
    earth = Planet.new("Earh", "blue-green", 0, 3, "is big")

    expect(earth.checks_if_zero?).must_equal false

  end

  it "returns false for distance that equals 0" do
    earth = Planet.new("Earh", "blue-green", 3, 0, "is big")

    expect(earth.checks_if_zero?).must_equal false

  end

end

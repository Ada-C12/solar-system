require "minitest"
require "minitest/spec"
require "minitest/autorun"
require "minitest/reporters"
require "minitest/pride"

require_relative "../lib/solar_system.rb"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "Solar System class" do
  it "can create a new solar system" do
    sola_system = SolarSystem.new("Sol")
    sola_system.star_name.must_equal("Sol")
  end
end

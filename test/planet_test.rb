require "minitest/autorun"
require "minitest/reporters"
require "minitest/skip_dsl"
require_relative "../lib/planet"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "planet" do
  it "checks_if_mass_kg_greater_than_zero" do
    
    expect {Planet.new("Zoltar", "yellow", -2, 5.87e23, "Only planet with warp-speed technology")}.must_raise ArgumentError

  end

  it "checks_if_distance_greater_than_zero" do
    
    expect {Planet.new("Omicron Persei 8", "green-blue", 5.972e24, 0, "Only planet where you can see stars at night")}.must_raise ArgumentError

  end

  # it "checks_if_input_planet_exists_in_Planet_class" do
    

  #   expect {Planet.new("Pluto", "purple", 2.3e18, 5.7e56, "Used to be a planet")}.must_raise ArgumentError

  # end
end

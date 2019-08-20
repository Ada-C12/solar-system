require_relative 'solar-system/planet'

require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/skip_dsl'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "Planet" do

  it 'enters a valid planet name as a string'

  end

  it 'raises ArgumentError if the number entered for mass is equal to or less than 0'

  test_mass_kg = 0


end
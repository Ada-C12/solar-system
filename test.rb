require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/skip_dsl'

require_relative '../main.rb'
require_relative '..planet.rb'

# Get that nice colorized output
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'planets' do
  describe 'attributes entered' do
    # checks that the name has at least 1 letter
    # checks that the color has only letters 
    # checks that fun fact has an input
    # checks that mass is not negative
    # checks that the distance from the sun is not negative
  end  
end

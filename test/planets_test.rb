require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'

require_relative '../planet'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'Planets class' do
  #   it 'has a name' do
  #     # Arrange
  
  #     # Act
  
  #     # Assert
  
  #   it 'contains a fun fact' do
  
  #     # Arrange
  #     hand = [3, 4]
  
  #     # Act
  #     score = blackjack_score(hand)
  
  #     # Assert
  #     expect(score).must_equal 7
  #   end
  
  #   it 'contains a color' do
  #     # Arrange
  #     hand = [3, 'Ace']
  
  #     # Act
  #     score = blackjack_score(hand)
  
  #     # Assert
  #     expect(score).must_equal 14
  #   end
  
  it 'raises an ArgumentError for masses less than 0 kg' do
    expect {
      Planet.new('Earth', 'blue-green', 0, 29478594, 'Only planet known to support life')
    }.must_raise ArgumentError
  end
  
  it 'raises an ArgumentError for distances less than 0 km' do
    expect {
      Planet.new('Earth', 'blue-green', 4964903, 0, 'Only planet known to support life')
    }.must_raise ArgumentError
  end
end 
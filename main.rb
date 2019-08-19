require_relative 'planet'

def main
  mars = Planet.new('Mars', 'Red', 6.42e23, 2.276e8, 'Mars is home to the highest mountain in our solar system.')
  venus = Planet.new('Venus', 'Yellowish white', 4.867e24, 1.08e8, 'Venus rotate in the opposite direction to other planets.')

  puts mars.summary
  puts venus.summary
end

main
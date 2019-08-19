require_relative 'planet'

def main
  mars = Planet.new('Mars', 'red', 6.42e23, 2.276e8, 'with the exception of Earth, Mars is the most hospitable to life ')
  venus = Planet.new('Venus', 'yellowish white', 4.867e24, 1.08e8, 'Venus rotate in the opposite direction to other planets. ')

  puts mars.summary
  puts venus.summary
end

main
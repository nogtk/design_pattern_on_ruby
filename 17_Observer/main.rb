require_relative 'random_number_generator'
require_relative 'digit_observer'
require_relative 'graph_observer'

module Observer
  class Main
    generator = RandomNumberGenerator.new
    observer1 = DigitObserver.new
    observer2 = GraphObserver.new
    generator.add_observer(observer1)
    generator.add_observer(observer2)

    generator.execute
  end
end

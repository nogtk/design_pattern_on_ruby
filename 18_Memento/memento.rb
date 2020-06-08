module Memento
  class Memento
    attr_accessor :money, :fruits

    def initialize(money)
      @money = money
      @fruits = []
    end

    def add_fruit(fruit)
      @fruits << fruit
    end
  end
end

require_relative 'strategy'

module Strategy
  class WinningStrategy
    include Strategy

    attr_accessor :won, :prev_hand
    attr_reader :random

    def initialize(seed)
      @random = Random.new(seed)
      @won = false
    end

    def next_hand
      if !won
        @prev_hand = Hand.get_hand(random.rand(3))
      end
      @prev_hand
    end

    def study(win)
      @won = win
    end
  end
end

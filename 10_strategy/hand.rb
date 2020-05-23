module Strategy
  class Hand
    HANDVALUE_GUU = 0
    HANDVALUE_CHO = 1
    HANDVALUE_PAA = 2
    NAME = [ 'グー', 'チョキ', 'パー' ]

    attr_reader :value

    def initialize(value)
      @value = value
    end

    HAND = [ Hand.new(HANDVALUE_GUU), Hand.new(HANDVALUE_CHO), Hand.new(HANDVALUE_PAA) ]

    def self.get_hand(value)
      HAND[value]
    end

    def stronger_than?(other_hand)
      fight(other_hand.value) == 1
    end

    def weaker_than?(other_hand)
      fight(other_hand.value) == -1
    end

    def to_string
      NAME[@value]
    end

    private

    def fight(other_value)
      my_value = self.value
      if my_value == other_value
        0
      elsif (my_value + 1) % 3 == other_value
        1
      else
        -1
      end
    end
  end
end

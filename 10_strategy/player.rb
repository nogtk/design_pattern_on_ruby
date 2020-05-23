module Strategy
  class Player
    attr_reader :name, :strategy
    attr_accessor :win_count, :lose_count, :game_count

    def initialize(name, strategy)
      @name = name
      @strategy = strategy
      @win_count = 0
      @lose_count = 0
      @game_count = 0
    end

    def next_hand
      strategy.next_hand
    end

    def win
      @strategy.study(true)
      @win_count += 1
      @game_count += 1
    end

    def lose
      @strategy.study(false)
      @lose_count += 1
      @game_count += 1
    end

    def even
      @game_count += 1
    end

    def result
      "[ #{@name}: #{@game_count} games, #{@win_count} win, #{@lose_count} lose ]"
    end
  end
end

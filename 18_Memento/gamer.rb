require_relative 'memento'

module Memento
  class Gamer
    attr_reader :money, :random
    attr_accessor :fruits

    FRUITS_NAME = %w(リンゴ ぶどう バナナ みかん)

    def initialize(money)
      @money = money
      @fruits = []
      @random = Random.new
    end

    def bet
      dice = @random.rand(6) + 1
      case dice
      when 1
        @money += 100
        puts '所持金が増えました.'
      when 2
        @money /= 2
        puts '所持金が半分になりました.'
      when 6
        fruit = get_fruit
        puts "フルーツ(#{fruit})をもらいました."
        @fruits << fruit
      else
        puts '何も起こりませんでした.'
      end
    end

    def create_memento
      m = Memento.new(money)
      @fruits.each do |f|
        m.add_fruit(f) if f.start_with?('おいしい')
      end

      m
    end

    def restore_memento(memento)
      @money = memento.money
      @fruits = memento.fruits
    end

    def to_string
      "[money = #{@money}, fruits = #{@fruits}]"
    end

    private

    def get_fruit
      prefix = @random.rand(2) == 1 ? 'おいしい' : ''
      prefix + FRUITS_NAME[@random.rand(FRUITS_NAME.size)]
    end
  end
end

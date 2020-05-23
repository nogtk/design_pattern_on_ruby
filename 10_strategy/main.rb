require_relative 'player'
require_relative 'winning_strategy'
require_relative 'prob_strategy'

require 'pry'

module Strategy
  class Main
    if ARGV.size != 2
      puts 'Usage: main.rb random_seed1 random_seed2'
      puts 'Example: main.rb 1 101'
    else
      seed1 = ARGV[0].to_i
      seed2 = ARGV[1].to_i

      p1 = Player.new('Taro', WinningStrategy.new(seed1))
      p2 = Player.new('Jiro', ProbStrategy.new(seed2))

      10000.times do
        next_hand_from_p1 = p1.next_hand
        next_hand_from_p2 = p2.next_hand
        if next_hand_from_p1.stronger_than? next_hand_from_p2
          puts "Winner: #{p1.name}"
          p1.win
          p2.lose
        elsif next_hand_from_p2.stronger_than? next_hand_from_p1
          puts "Winner: #{p2.name}"
          p1.lose
          p2.win
        else
          puts 'Even...'
          p1.even
          p2.even
        end
      end
      puts "Total Result:"
      puts "#{p1.result}"
      puts "#{p2.result}"
    end
  end
end

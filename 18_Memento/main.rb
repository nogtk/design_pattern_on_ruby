require_relative 'gamer'
require_relative 'memento'

module Memento
  class Main
    gamer = Gamer.new(100)
    memento = gamer.create_memento
    100.times do |i|
      puts "=== #{i}"
      puts "現状: #{gamer.to_string}"

      gamer.bet

      puts "所持金は#{gamer.money}円になりました."

      if gamer.money > memento.money
        puts '(だいぶ増えたので, 現在の状態を保存しておこう)'
        memento = gamer.create_memento
      elsif gamer.money < memento.money / 2
        puts '(だいぶ減ったので, 以前の状態に復帰しよう)'
        gamer.restore_memento(memento)
      end

      sleep(0.1)

      puts ''
    end
  end
end

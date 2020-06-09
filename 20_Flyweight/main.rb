require_relative 'big_string'

module FlyWeight
  class Main
    StandardError.new('1つ以上の引数が必要です') if ARGV[0].size == 0
    BigString.new(ARGV[0]).print_big_chars
  end
end

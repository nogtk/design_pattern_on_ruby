require_relative 'big_char_factory'

module FlyWeight
  class BigString
    attr_accessor :big_chars

    def initialize(string)
      @big_chars = []
      factory = BigCharFactory.instance
      string.size.times do |i|
        @big_chars << factory.big_char(string[i])
      end
    end

    def print_big_chars
      @big_chars.each(&:print_font)
    end
  end
end

require_relative 'big_char'
require 'singleton'

module FlyWeight
  class BigCharFactory
    include Singleton

    def initialize
      @pool = {}
    end

    def big_char(char_name)
      bc = @pool[char_name]
      if bc.nil?
        bc = BigChar.new(char_name)
        @pool[char_name] = bc
      end

      bc
    end

    private

    attr_accessor :pool
  end
end

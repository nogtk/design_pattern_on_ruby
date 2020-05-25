require_relative 'display'

module Decorator
  class Border < Display
    attr_accessor :display
    def initialize(display)
      @display = display
    end
  end
end

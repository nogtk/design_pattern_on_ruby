require_relative 'number_generator'

module Observer
  class RandomNumberGenerator < NumberGenerator
    attr_accessor :number
    attr_reader :random
    def initialize
      @random = Random.new
      super
    end

    def get_number
      @number
    end

    def execute
      20.times do
        @number = @random.rand(50)
        notify_observers
      end
    end
  end
end

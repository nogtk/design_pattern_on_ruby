require_relative 'context'
require_relative 'day_state'

module State
  class SafeFrame
    class UndefinedActionError < StandardError; end

    include Context

    attr_accessor :state

    def initialize
      @state = DayState.instance
    end

    def action(pattern)
      case pattern
      when :use
        @state.use(self)
      when :alarm
        @state.alarm(self)
      when :phone
        @state.phone(self)
      else
        raise UndefinedActionError.new('定義されていないアクションです')
      end
    end

    def clock(hour)
      clock_string = '現在時刻は'
      if hour < 10
        clock_string += "0#{hour}:00"
      else
        clock_string += "#{hour}:00"
      end
      puts clock_string
      @state.clock(self, hour)
    end

    def change_state(state)
      @state = state
    end

    def call_security_center(msg)
      puts "call! #{msg}"
    end

    def record_log(msg)
      puts "record ... #{msg}"
    end
  end
end

require 'singleton'
require_relative 'state'
require_relative 'night_state'

module State
  class DayState
    include Singleton
    include State

    def clock(context, hour)
      if hour < 9 || 17 <= hour
        context.change_state(NightState.instance)
      end
    end

    def use(context)
      context.record_log('金庫使用(昼間)')
    end

    def alarm(context)
      context.call_security_center('非常ベル(昼間)')
    end

    def phone(context)
      context.call_security_center('通常の通話(昼間)')
    end
  end
end

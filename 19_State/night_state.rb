require 'singleton'
require_relative 'state'
require_relative 'day_state'

module State
  class NightState
    include Singleton
    include State

    def clock(context, hour)
      if 9 <= hour && hour < 17
        context.change_state(DayState.instance)
      end
    end

    def use(context)
      context.call_security_center('非常: 夜間の金庫使用!')
    end

    def alarm(context)
      context.call_security_center('非常ベル(夜間)')
    end

    def phone(context)
      context.record_log('夜間の通話録音')
    end
  end
end

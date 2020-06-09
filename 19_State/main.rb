require_relative 'safe_frame'

module State
  class Main
    ACTION_PATTERNS = %i(use alarm phone)
    frame = SafeFrame.new
    patterns_index = 0
    while true
      (0..23).each do |hour|
        frame.clock(hour)
        frame.action(ACTION_PATTERNS[patterns_index])
        patterns_index += 1
        patterns_index = 0 if patterns_index == ACTION_PATTERNS.size
        sleep(1)
      end
    end
  end
end

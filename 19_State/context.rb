module State
  module Context
    def clock
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end

    def change_state
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end

    def call_security_center
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end

    def record_log
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end
  end
end

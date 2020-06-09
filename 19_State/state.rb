module State
  module State
    def clock
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end

    def use
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end

    def alarm
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end

    def phone
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end
  end
end

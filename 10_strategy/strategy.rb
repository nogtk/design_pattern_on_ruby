module Strategy
  module Strategy
    def next_hand
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end

    def study(win)
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end
  end
end

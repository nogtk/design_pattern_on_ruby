module Bridge
  class DisplayImpl
    def raw_open
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end

    def raw_print
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end

    def raw_close
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end
  end
end

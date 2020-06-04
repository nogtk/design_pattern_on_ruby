module Observer
  module Observer
    def update(generator)
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end
  end
end

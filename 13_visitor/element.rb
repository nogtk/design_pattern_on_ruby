module Visitor
  module Element
    def accept(visitor)
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end
  end
end

module Visitor
  class Visitor
    def visit(target)
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end
  end
end

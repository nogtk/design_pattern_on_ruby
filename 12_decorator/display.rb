module Decorator
  class Display
    def columns
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end

    def rows
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end

    def row_text
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end

    def show
      rows.times do |i|
        puts row_text(i)
      end
    end
  end
end

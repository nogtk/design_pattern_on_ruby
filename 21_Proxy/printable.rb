module Proxy
  module Printable
    def set_printer_name
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end

    def get_printer_name
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end

    def printing
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end
  end
end

module Composite
  class FileTreatmentException < StandardError; end

  class Entry
    def get_name
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end

    def get_size
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end

    def print_list(prefix = '')
      raise NotImplementedError
    end

    def to_string
      "#{get_name} ( #{get_size} )"
    end

    def add
      raise FileTreatmentException
    end
  end
end

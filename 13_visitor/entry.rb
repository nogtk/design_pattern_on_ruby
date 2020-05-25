require_relative 'element'

module Visitor
  class FileTreatmentException < StandardError; end

  class Entry
    include Element

    def name
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end

    def size
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end

    def add
      raise FileTreatmentException
    end

    def to_string
      "#{name} (#{size})"
    end
  end
end

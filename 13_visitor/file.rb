require_relative 'entry'

module Visitor
  class File < Entry
    attr_reader :name, :size
    def initialize(name, size)
      @name = name
      @size = size
    end

    def name
      @name
    end

    def size
      @size
    end

    def accept(visitor)
      visitor.visit(self)
    end
  end
end

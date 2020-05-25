require_relative 'entry'

module Visitor
  class Directory < Entry
    attr_reader :name
    attr_accessor :dir
    def initialize(name)
      @name = name
      @dir = []
    end

    def name
      @name
    end

    def size
      @dir.sum(&:size)
    end

    def add(entry)
      @dir << entry
    end

    def accept(visitor)
      visitor.visit(self)
    end
  end
end

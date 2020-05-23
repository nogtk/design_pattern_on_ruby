require_relative 'entry'

module Composite
  class Directory < Entry
    attr_reader :name, :directory

    def initialize(name)
      @name = name
      @directory = []
    end

    def get_name
      @name
    end

    def get_size
      @directory.sum(&:get_size)
    end

    def add(entry)
      @directory << entry
    end

    def print_list(prefix = '')
      puts "#{prefix}/#{self.to_string}"
      @directory.each do |dir|
        dir.print_list("#{prefix}/#{@name}")
      end
    end
  end
end

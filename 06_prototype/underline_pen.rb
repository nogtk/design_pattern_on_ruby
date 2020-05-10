require_relative 'framework/product'

module Prototype
  class UnderlinePen
    attr_reader :ulchar

    include Prototype::Framework::Product

    def initialize(ulchar)
      @ulchar = ulchar
    end

    def use(str)
      length = str.bytesize
      puts "\" #{str} \""
      puts " #{@ulchar*length} "
    end

    def create_clone
      self.dup
    end
  end
end

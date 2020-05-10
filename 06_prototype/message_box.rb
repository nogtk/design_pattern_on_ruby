require_relative 'framework/product'

module Prototype
  class MessageBox
    attr_reader :decochar

    include Prototype::Framework::Product

    def initialize(decochar)
      @decochar = decochar
    end

    def use(str)
      length = str.bytesize
      puts @decochar*(length+4)
      puts "#{@decochar} #{str} #{@decochar}"
      puts @decochar*(length+4)
    end

    def create_clone
      self.dup
    end
  end
end

require_relative 'printer'

module Proxy
  class PrinterProxy
    include Printable
    def initialize(name)
      @name = name
    end

    def set_printer_name(name)
      @real.set_printer_name unless @real.nil?
      @name = name
    end

    def get_printer_name
      @name
    end

    def printing(string)
      realize
      @real.printing(string)
    end

    private

    attr_accessor :name
    attr_accessor :real

    def realize
      @real ||= Printer.new(@name)
    end
  end
end

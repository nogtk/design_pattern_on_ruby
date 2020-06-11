require_relative 'printable'

module Proxy
  class Printer
    include Printable
    attr_accessor :name

    def initialize(name)
      @name = name
      heavy_job("Printerのインスタンス#{name}を生成中")
    end

    def set_printer_name(name)
      @name = name
    end

    def get_printer_name
      @name
    end

    def printing(string)
      puts "===#{@name}==="
      puts string
    end

    def heavy_job(msg)
      puts msg
      5.times do
        sleep(1)
        print '.'
      end
      puts 'DONE'
    end
  end
end

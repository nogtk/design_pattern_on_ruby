require_relative 'printer_proxy'

module Proxy
  class Main
    p = PrinterProxy.new('Alice')
    puts "名前は現在#{p.get_printer_name}です。"
    p.set_printer_name('Bob')
    puts "名前は現在#{p.get_printer_name}です。"
    p.printing("Hello, world")
  end
end

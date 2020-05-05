require_relative 'print_banner'
module Adapter
  class Main
    print_banner = PrintBanner.new('hello')
    puts print_banner.print_week
    puts print_banner.print_strong
  end
end

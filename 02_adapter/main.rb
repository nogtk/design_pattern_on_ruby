require_relative 'print_banner'
require_relative 'print_banner_delegate'
module Adapter
  class Main
    puts '=== Implement adapter pattern by inheritance ==='
    print_banner = PrintBanner.new('hello')
    puts print_banner.print_week
    puts print_banner.print_strong

    puts '=== Implement adapter pattern by delegate ==='
    print_banner_delegate = PrintBannerDelegate.new('こんにちは')
    puts print_banner_delegate.print_week
    puts print_banner_delegate.print_strong
  end
end

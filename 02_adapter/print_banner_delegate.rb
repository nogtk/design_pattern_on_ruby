require_relative 'banner'
module Adapter
  class PrintBannerDelegate
    def initialize(str)
      @banner = Banner.new(str)
    end

    def print_week
      @banner.show_with_paren
    end

    def print_strong
      @banner.show_with_astar
    end
  end
end

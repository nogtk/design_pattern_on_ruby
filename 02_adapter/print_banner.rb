require_relative 'print'
require_relative 'banner'
module Adapter
  class PrintBanner < Banner
    attr_reader :str
    include Print

    def initialize(str)
      super
    end

    def print_week
      show_with_paren
    end

    def print_strong
      show_with_astar
    end
  end
end

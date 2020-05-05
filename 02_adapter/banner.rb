module Adapter
  class Banner
    attr_reader :str
    def initialize(str)
      @str = str
    end

    def show_with_paren
      "(#{@str})"
    end

    def show_with_astar
      "**#{@str}**"
    end
  end
end

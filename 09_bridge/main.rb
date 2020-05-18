require_relative 'display'
require_relative 'count_display'
require_relative 'string_display_impl'
module Bridge
  class Main
    d1 = Display.new(StringDisplayImpl.new('Hello, world'))
    d2 = Display.new(StringDisplayImpl.new('Hello, Japan'))
    d3 = CountDisplay.new(StringDisplayImpl.new('Hello, US'))

    d1.display
    d2.display
    d3.display
    d3.multi_display(5)
  end
end

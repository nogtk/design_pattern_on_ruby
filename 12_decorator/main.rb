require_relative 'string_display'
require_relative 'side_border'
require_relative 'full_border'

module Decorator
  class Main
    b1 = StringDisplay.new('Hello, world.')
    b2 = SideBorder.new(b1, '#')
    b3 = FullBorder.new(b2)
    b1.show
    b2.show
    b3.show
    b4 = SideBorder.new(
      FullBorder.new(
        FullBorder.new(
          SideBorder.new(
            FullBorder.new(
              StringDisplay.new("Thanks.")
            ),
            '*')
        )
      ),
      '*')
    b4.show
  end
end

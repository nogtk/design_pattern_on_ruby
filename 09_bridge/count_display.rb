require_relative 'display'

module Bridge
  class CountDisplay < Display
    def initialize(impl)
      super
    end

    def multi_display(n)
      open
      n.times { print }
      close
    end
  end
end

module Adapter
  module Print
    def print_week
      raise StandardError.new('You must inherit "print_week"')
    end

    def print_strong
      raise StandardError.new('You must inherit "print_strong"')
    end
  end
end

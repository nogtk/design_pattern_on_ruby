module Prototype
  module Framework
    module Product
      def use
        raise StandardError.new('実装してね')
      end
      def create_clone
        raise StandardError.new('実装してね')
      end
    end
  end
end

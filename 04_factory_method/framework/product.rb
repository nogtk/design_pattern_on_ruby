module FactoryMethod
  module Framework
    class Product
      def use
        raise StandardError.new('実装してね')
      end
    end
  end
end

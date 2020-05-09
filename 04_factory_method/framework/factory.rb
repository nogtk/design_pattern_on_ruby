module FactoryMethod
  module Framework
    class Factory
      def create(owner)
        p = create_product(owner)
        register_product(p)
        p
      end

      private

      def create_product(owner)
        raise StandardError.new('実装してね')
      end

      def register_product(product)
      raise StandardError.new('実装してね')
      end
    end
  end
end

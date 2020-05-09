require_relative 'id_card'
require_relative '../framework/factory'

module FactoryMethod
  module IdCard
    class IdCardFactory < FactoryMethod::Framework::Factory
      attr_accessor :owners
      def initialize
        @owners = []
      end

      def owners
        @owners
      end

      private

      def create_product(owner)
        FactoryMethod::IdCard::IdCard.new(owner)
      end

      def register_product(product)
        @owners << product.owner
      end
    end
  end
end

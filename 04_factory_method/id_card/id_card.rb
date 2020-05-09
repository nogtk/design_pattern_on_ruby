require_relative '../framework/product'

module FactoryMethod
  module IdCard
    class IdCard < FactoryMethod::Framework::Product
      attr_reader :owner
      def initialize(owner)
        puts "#{owner}のカードを作ります。"
        @owner = owner
      end

      def use
        puts "#{@owner}のカードを使います。"
      end

      def owner
        @owner
      end
    end
  end
end

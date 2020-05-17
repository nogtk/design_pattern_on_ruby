require_relative 'item'

module AbstractFactory
  module Factory
    class Tray < AbstractFactory::Factory::Item
      attr_accessor :tray

      def initialize(caption)
        @tray = []
        super(caption)
      end

      def add(item)
        @tray << item
      end
    end
  end
end

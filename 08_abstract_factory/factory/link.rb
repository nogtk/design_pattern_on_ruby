require_relative 'item'

module AbstractFactory
  module Factory
    class Link < AbstractFactory::Factory::Item
      attr_reader :url

      def initialize(caption, url)
        @url = url
        super(caption)
      end
    end
  end
end

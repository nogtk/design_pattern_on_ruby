module AbstractFactory
  module Factory
    class Item
      attr_reader :caption

      def initialize(caption)
        @caption = caption
      end

      def make_html
        raise StandardError.new('実装してね.')
      end
    end
  end
end

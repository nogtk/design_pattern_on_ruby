module AbstractFactory
  module Factory
    class Factory
      def self.factory(class_name)
        Object.const_get("::AbstractFactory::#{class_name}::#{class_name}").new
      end

      def create_link(caption, url)
        raise StandardError.new('実装してね.')
      end

      def create_tray(caption)
        raise StandardError.new('実装してね')
      end

      def create_page(title, author)
        raise StandardError.new('実装してね')
      end
    end
  end
end

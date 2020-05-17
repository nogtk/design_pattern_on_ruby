module AbstractFactory
  module TableFactory
    class TableLink < AbstractFactory::Factory::Link
      def initialize(caption, url)
        super
      end

      def make_html
        "<td><a href=\"#{@url}\">#{@caption}</a></td>\n"
      end
    end
  end
end

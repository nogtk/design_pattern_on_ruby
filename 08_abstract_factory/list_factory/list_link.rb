require_relative '../factory/link'

module AbstractFactory
  module ListFactory
    class ListLink < AbstractFactory::Factory::Link
      def initialize(caption, url)
        super
      end

      def make_html
        " <li><a href=\"#{@url}\"> #{@caption} </a></li>"
      end
    end
  end
end

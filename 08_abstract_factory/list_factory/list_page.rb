require_relative '../factory/page'

module AbstractFactory
  module ListFactory
    class ListPage < AbstractFactory::Factory::Page
      def initialize(title, author)
        super
      end

      def make_html
        str = ""
        str += "<html><head><title>#{@title}</title></head>\n"
        str += "<body>\n"
        str += "<h1>#{@title}</h1>\n"
        str += "<ul>\n"
        @content.each do |content|
          str += content.make_html
        end
        str += "</ul>\n"
        str += "<hr><address>#{@author}</address>"
        str += "</body></html>"
        str
      end
    end
  end
end

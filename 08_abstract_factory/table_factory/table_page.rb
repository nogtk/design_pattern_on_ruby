module AbstractFactory
  module TableFactory
    class TablePage < AbstractFactory::Factory::Page
      def initialize(title, author)
        super
      end

      def make_html
        str = ""
        str += "<html><head><title>#{@title}</title></head>\n"
        str += "<body>\n"
        str += "<h1>#{@title}</h1>\n"
        str += "<table width\"80%\" border=\"3\">\n"
        @content.each do |content|
          str += "<tr>#{content.make_html}</tr>"
        end
        str += "</table>\n"
        str += "<hr><address>#{@author}</address>"
        str += "</body></html>"
        str
      end
    end
  end
end

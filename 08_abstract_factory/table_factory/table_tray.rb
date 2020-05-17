module AbstractFactory
  module TableFactory
    class TableTray < AbstractFactory::Factory::Tray
      def initialize(caption)
        super
      end

      def make_html
        str = ''
        str += "<td>"
        str += "<table width=\"100%\" border=\"1\"><tr>"
        str += "<td bgcolor=\"#cccccc\" align=\"center\" colspan=\"#{@tray.size}\"<b>#{@caption}</b></td>"
        str += "</tr>\n"
        str += "<tr>\n"
        @tray.each do |tray|
          str += tray.make_html
        end
        str += "</tr></table>"
        str += "</td>"
        str
      end
    end
  end
end

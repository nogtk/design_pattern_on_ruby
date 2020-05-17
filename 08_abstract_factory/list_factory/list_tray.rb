require_relative '../factory/tray'

module AbstractFactory
  module ListFactory
    class ListTray < AbstractFactory::Factory::Tray
      def initialize(caption)
        super(caption)
      end

      def make_html
        str = ""
        str += "<li>\n"
        str += "#{@caption}\n"
        str += "<ul>\n"

        @tray.each do |tray|
          str += tray.make_html
        end
        str += "</ul>\n"
        str += "</li>\n"
        str
      end
    end
  end
end

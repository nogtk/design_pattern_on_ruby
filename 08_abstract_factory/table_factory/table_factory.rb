require_relative '../factory/factory'
require_relative 'table_link'
require_relative 'table_tray'
require_relative 'table_page'

module AbstractFactory
  module TableFactory
    class TableFactory < AbstractFactory::Factory::Factory
      def create_link(caption, url)
        TableLink.new(caption, url)
      end

      def create_tray(caption)
        TableTray.new(caption)
      end

      def create_page(title, author)
        TablePage.new(title, author)
      end
    end
  end
end

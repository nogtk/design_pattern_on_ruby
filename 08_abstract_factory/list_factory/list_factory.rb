require_relative '../factory/factory'
require_relative 'list_link'
require_relative 'list_tray'
require_relative 'list_page'

module AbstractFactory
  module ListFactory
    class ListFactory < AbstractFactory::Factory::Factory
      def create_link(caption, url)
        AbstractFactory::ListFactory::ListLink.new(caption, url)
      end

      def create_tray(caption)
        AbstractFactory::ListFactory::ListTray.new(caption)
      end

      def create_page(title, author)
        AbstractFactory::ListFactory::ListPage.new(title, author)
      end
    end
  end
end

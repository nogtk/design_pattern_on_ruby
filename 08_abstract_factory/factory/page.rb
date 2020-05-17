module AbstractFactory
  module Factory
    class Page
      attr_reader :title, :author
      attr_accessor :content

      def initialize(title, author)
        @title = title
        @author = author
        @content = []
      end

      def add(item)
        content << item
      end

      def output
        filename = "#{@title}.html"
        File.open(filename, 'w') do |f|
          f.puts(make_html)
        end
        puts "#{filename}を作成しました."
      end

      def make_html
        raise StandardError.new('実装してね')
      end
    end
  end
end

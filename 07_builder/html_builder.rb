require_relative 'builder'

module Builder
  class HTMLBuilder < ::Builder::Builder
    attr_accessor :buffer
    attr_accessor :file_name
    def initialize
    end
    def make_title(title)
      @file_name = "#{title}.html"
      File.open(@file_name, 'w') do |f|
        f.puts("<html><head><title>#{@file_name}</title></head><body>")
        f.puts("<h1>#{@file_name}</h1>")
      end
    end

    def make_string(str)
      File.open(@file_name, 'a') do |f|
        f.puts("<p>#{str}</p>")
      end
    end

    def make_items(items)
      File.open(@file_name, 'a') do |f|
        f.puts '<ul>'
        items.each do |item|
          f.puts("<li>#{item}</li>")
        end
        f.puts '</ul>'
      end
    end

    def close
      File.open(@file_name, 'a') do |f|
        f.puts('</body></html>')
      end
    end

    def result
      @file_name
    end
  end
end

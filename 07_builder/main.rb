require_relative 'text_builder'
require_relative 'html_builder'
require_relative 'director'

module Builder
  class Main
    if ARGV.length != 1
      STDERR.print('ruby main.rb plain|html と呼び出してね')
    else
      if ARGV[0] == 'plain'
        text_builder = ::Builder::TextBuilder.new
        director = ::Builder::Director.new(text_builder)
        director.construct
        puts text_builder.result
      elsif ARGV[0] == 'html'
        html_builder = ::Builder::HTMLBuilder.new
        director = ::Builder::Director.new(html_builder)
        director.construct
        puts html_builder.result
      end
    end
  end
end

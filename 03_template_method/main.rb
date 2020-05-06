require_relative 'char_display'
require_relative 'string_display'

module TemplateMethod
  class Main
    cd = CharDisplay.new('H')
    sd1 = StringDisplay.new('Hello, World.')
    sd2 = StringDisplay.new('こんにちは、世界。')
    puts cd.display
    puts sd1.display
    puts sd2.display
  end
end

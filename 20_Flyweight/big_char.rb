module FlyWeight
  class BigChar
    def initialize(char_name)
      @char_name = char_name
      @font_data = ""

      File.open("font/big#{@char_name}.txt", 'r') do |f|
        f.readlines.each do |line|
          @font_data += "#{line}\n"
        end
      end
    end

    def print_font
      print @font_data
    end

    private

    attr_reader :char_name
    attr_reader :font_data
  end
end

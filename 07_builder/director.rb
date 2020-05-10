module Builder
  class Director
    attr_reader :builder
    def initialize(builder)
      @builder = builder
    end

    def construct
      @builder.make_title('Greeting')
      @builder.make_string('朝から昼にかけて')
      @builder.make_items(['おはようございます', 'こんにちは'])
      @builder.make_string('夜に')
      @builder.make_items(['こんばんは', 'おやすみなさい', 'さようなら'])
      @builder.close
    end
  end
end

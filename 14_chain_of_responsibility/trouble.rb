module ChainOfResponsibility
  class Trouble
    attr_reader :number

    def initialize(number)
      @number = number
    end

    def to_string
      "[Trouble #{number}]"
    end
  end
end

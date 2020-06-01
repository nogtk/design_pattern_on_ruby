require_relative 'support'

module ChainOfResponsibility
  class SpecialSupport < Support
    attr_reader :number

    def initialize(name, number)
      @number = number
      super(name)
    end

    def resolve(trouble)
      if trouble.number == @number
        true
      else
        false
      end
    end
  end
end

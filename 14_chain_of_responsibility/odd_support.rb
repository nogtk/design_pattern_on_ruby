require_relative 'support'

module ChainOfResponsibility
  class OddSupport < Support
    def resolve(trouble)
      if odd?(trouble)
        true
      else
        false
      end
    end

    private

    def odd?(trouble)
      trouble.number % 2 == 1
    end
  end
end

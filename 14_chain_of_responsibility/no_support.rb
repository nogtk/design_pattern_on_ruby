require_relative 'support'

module ChainOfResponsibility
  class NoSupport < Support
    def resolve(trouble)
      false
    end
  end
end

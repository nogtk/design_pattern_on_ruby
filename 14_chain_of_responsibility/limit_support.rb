require_relative 'support'

module ChainOfResponsibility
  class LimitSupport < Support
    attr_reader :limit

    def initialize(name, limit)
      @limit = limit
      super(name)
    end

    def resolve(trouble)
      if trouble.number < limit
        true
      else
        false
      end
    end
  end
end

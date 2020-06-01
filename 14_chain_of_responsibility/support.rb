module ChainOfResponsibility
  class Support
    attr_accessor :next
    attr_reader :name

    def initialize(name)
      @name = name
    end

    def support(trouble)
      if resolve(trouble)
        done(trouble)
      elsif @next != nil
        @next.support(trouble)
      else
        fail_resolve(trouble)
      end
    end

    def set_next(_next)
      @next = _next
    end

    protected

    def resolve(trouble)
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end

    def done(trouble)
      puts "#{trouble.number} is resolved by #{self.name}."
    end

    def fail_resolve(trouble)
      puts "#{trouble.number} cannot be resolved."
    end
  end
end

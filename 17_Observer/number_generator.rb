module Observer
  class NumberGenerator
    attr_accessor :observers

    def initialize
      @observers = []
    end

    def add_observer(observer)
      @observers << observer
    end

    def delete_observer(observer)
      @observers.reject! { |o| o == observer }
    end

    def notify_observers
      @observers.each { |observer| observer.update(self) }
    end

    def get_number
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end

    def execute
      raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
    end
  end
end

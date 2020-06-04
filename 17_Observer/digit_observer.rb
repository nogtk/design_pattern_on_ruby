require_relative 'observer'

module Observer
  class DigitObserver
    include Observer

    def update(generator)
      puts "DigitObserver: #{generator.get_number}"
      sleep(0.1)
    end
  end
end

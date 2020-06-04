require_relative 'observer'

module Observer
  class GraphObserver
    include Observer

    def update(generator)
      puts "GraphObserver: #{'*' * generator.get_number}"
      sleep(0.1)
    end
  end
end

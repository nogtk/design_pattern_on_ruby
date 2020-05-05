module Iterator
  class BookShelf
    attr_reader :size
    attr_accessor :books
    def initialize(size)
      @size = size
      @books = []
    end

    def at(index)
      @books[index]
    end

    def append(book)
      @books << book;
    end

    def length
      @books.size
    end

    def titles
      @books.map(&:title)
    end

    def iterator
      Iterator::BookShelfIterator.new(self)
    end
  end
end

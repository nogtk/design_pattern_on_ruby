module Iterator
  class BookShelfIterator
    attr_reader :book_shelf, :index
    def initialize(book_shelf)
      @book_shelf = book_shelf
      @index = 0
    end

    def has_next?
      index < @book_shelf.size-1
    end

    def next
      book = @book_shelf.at(@index)
      @index += 1
      book
    end
  end
end

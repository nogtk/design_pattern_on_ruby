require_relative 'book'
require_relative 'book_shelf'
require_relative 'book_shelf_iterator'
module Iterator
  class Main
    shelf = Iterator::BookShelf.new(5)
    shelf.append(Iterator::Book.new('Javaで学ぶデザインパターン'))
    shelf.append(Iterator::Book.new('リーダブルコード'))
    shelf.append(Iterator::Book.new('Effective Ruby'))
    shelf.append(Iterator::Book.new('新しいLinuxの教科書'))

    puts '--- show titles by BookShelf intstance method ---'
    puts shelf.titles

    puts '--- show titles by BookShelf iterator ---'
    it = shelf.iterator
    while(it.has_next?)
      book = it.next
      puts book.title
    end
  end
end

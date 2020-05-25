require_relative 'directory'
require_relative 'file'
require_relative 'list_visitor'

module Visitor
  class Main
    puts "Making root entries..."
    root_dir = Directory.new('root')
    bin_dir = Directory.new('bin')
    tmp_dir = Directory.new('tmp')
    usr_dir = Directory.new('usr')
    root_dir.add(bin_dir)
    root_dir.add(tmp_dir)
    root_dir.add(usr_dir)
    bin_dir.add(File.new('vi,', 10000))
    bin_dir.add(File.new('latex', 20000))
    root_dir.accept(ListVisitor.new)

    puts ""
    puts "Making user entries..."

    yuki = Directory.new('yuki')
    hanako = Directory.new('hanako')
    tomura = Directory.new('tomura')
    usr_dir.add(yuki)
    usr_dir.add(hanako)
    usr_dir.add(tomura)
    yuki.add(File.new('diary.html', 100))
    yuki.add(File.new('memo.txt', 200))
    hanako.add(File.new('hogefuga.java', 300))
    tomura.add(File.new('hello_world.c', 400))
    tomura.add(File.new('foo.rb', 500))
    root_dir.accept(ListVisitor.new)
  end
end

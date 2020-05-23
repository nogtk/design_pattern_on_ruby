require_relative 'file'
require_relative 'directory'

module Composite
  class Main
    puts 'Making root entries...'
    root_dir = Directory.new('root')
    bin_dir = Directory.new('bin')
    tmp_dir = Directory.new('tmp')
    usr_dir = Directory.new('usr')
    root_dir.add(bin_dir)
    root_dir.add(tmp_dir)
    root_dir.add(usr_dir)
    bin_dir.add(File.new('vi', 10000))
    bin_dir.add(File.new('latex', 20000))
    root_dir.print_list

    puts ''
    puts 'Making user entries...'
    yuki = Directory.new('yuki')
    hanako = Directory.new('hanako')
    tomura = Directory.new('tomura')
    usr_dir.add(yuki)
    usr_dir.add(hanako)
    usr_dir.add(tomura)
    yuki.add(File.new('diary.html', 100))
    yuki.add(File.new('Composite.java', 200))
    hanako.add(File.new('memo.txt', 300))
    tomura.add(File.new('game.doc', 400))
    tomura.add(File.new('junk.mail', 500))
    root_dir.print_list
  end
end

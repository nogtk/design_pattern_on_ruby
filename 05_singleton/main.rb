require_relative 'singleton_test'

module Singleton
  class Main
    puts 'Starts.'
    obj1 = Singleton::SingletonTest.instance
    obj2 = Singleton::SingletonTest.instance
    puts obj1.object_id
    puts obj2.object_id

    # new しようとするとエラーが起こる
    # Singleton::SingletonTest.new
  end
end

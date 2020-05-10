require 'singleton'

module Singleton
  class SingletonTest
    include Singleton

    def initialize
      puts 'インスタンスを生成しました'
    end
  end
end

require_relative 'no_support'
require_relative 'limit_support'
require_relative 'special_support'
require_relative 'odd_support'
require_relative 'trouble'

module ChainOfResponsibility
  class Main
    alice = NoSupport.new('Alice')
    bob = LimitSupport.new('Bob', 100)
    charlie = SpecialSupport.new('Charlie', 429)
    diana = LimitSupport.new('Diana', 200)
    elmo = OddSupport.new('Elmo')
    fred = LimitSupport.new('Fred', 300)

    alice.set_next(bob).set_next(charlie).set_next(diana).set_next(elmo).set_next(fred)

    0.step(500, 33) do |i|
      alice.support(Trouble.new(i))
    end
  end
end

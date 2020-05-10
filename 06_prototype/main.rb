require_relative 'framework/manager'
require_relative 'underline_pen'
require_relative 'message_box'

module Prototype
  class Main
    manager = Prototype::Framework::Manager.new
    upen = Prototype::UnderlinePen.new('~')
    mbox = Prototype::MessageBox.new('*')
    sbox = Prototype::MessageBox.new('/')

    manager.register('strong message', upen)
    manager.register('warning box', mbox)
    manager.register('slash box', sbox)

    p1 = manager.create('strong message')
    p2 = manager.create('warning box')
    p3 = manager.create('slash box')

    p1.use('Hello, world.')
    p2.use('Hello, world.')
    p3.use('Hello, world.')
  end
end

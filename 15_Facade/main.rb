require_relative 'page_maker'

module Facade
  class Main
    PageMaker.make_welcome_page('hyuki@hyuki.com', 'welcome.html')
  end
end

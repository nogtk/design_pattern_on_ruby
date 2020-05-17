require_relative 'factory/factory'
require_relative 'list_factory/list_factory'
require_relative 'table_factory/table_factory'

module AbstractFactory
  class Main
    raise StandardError.new('factoryの名前を1つだけ指定してね.') if ARGV.size != 1
    factory = AbstractFactory::Factory::Factory.factory(ARGV[0])

    asahi = factory.create_link('朝日新聞', 'https://www.asahi.com')
    yomiuri = factory.create_link('読売新聞', 'https://www.yomiuri.co.jp')

    us_yahoo = factory.create_link('Yahoo!', 'https://www.yahoo.com')
    jp_yahoo = factory.create_link('Yahoo!Japan', 'https://www.yahoo.co.jp')

    excite = factory.create_link('Excite', 'https://www.excite.com')
    google = factory.create_link('Google', 'https://www.google.com')

    tray_news = factory.create_tray('新聞')
    tray_news.add(asahi)
    tray_news.add(yomiuri)

    tray_yahoo = factory.create_tray('Yahoo!')
    tray_yahoo.add(us_yahoo)
    tray_yahoo.add(jp_yahoo)

    tray_search = factory.create_tray('サーチエンジン')
    tray_search.add(tray_yahoo)
    tray_search.add(excite)
    tray_search.add(google)

    page = factory.create_page('LinkPage', 'Naoga Taka')
    page.add(tray_news)
    page.add(tray_search)
    page.output
  end
end

require_relative 'id_card/id_card_factory'

module FactoryMethod
  class Main
    factory = FactoryMethod::IdCard::IdCardFactory.new
    taro_id_card = factory.create('taro')
    jiro_id_card = factory.create('jiro')
    hanako_id_card = factory.create('hanako')
    taro_id_card.use
    jiro_id_card.use
    hanako_id_card.use
    p factory.owners
  end
end

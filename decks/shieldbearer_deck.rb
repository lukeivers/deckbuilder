require './decks/mage_deck'

class ShieldbearerDeck < WarlockDeck
  def initialize
    @name = 'Shieldbearer'
    @base_cards = [
        { name: 'Shieldbearer', amount: 2 },
        { name: 'Frostwolf Grunt', amount: 2 },
        { name: 'Goldshire Footman', amount: 2},
        { name: 'Ironfur Grizzly', amount: 2},
        { name: 'Silverback Patriarch', amount: 2},
        { name: 'Tauren Warrior', amount: 2},
        { name: 'Voidwalker', amount: 2},
        { name: 'Argent Commander', amount: 2},
        { name: 'Argent Squire', amount: 2},
        { name: 'Scarlet Crusader', amount: 2},
        { name: 'Chillwind Yeti', amount: 2},
        { name: 'Blood Knight', amount: 2},
        { name: 'Defender of Argus', amount: 1},
        { name: 'Stormwind Champion', amount: 1},
        { name: 'Frothing Berserker', amount: 2},
    ]
    super
  end
end
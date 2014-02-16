require './decks/mage_deck'

class ShieldbearerDeck < MageDeck
  def initialize
    @name = 'Shieldbearer'
    @base_cards = [
        { name: 'Shieldbearer', amount: 2 },
        { name: 'Arcane Missiles', amount: 2 },
        { name: 'Acidic Swamp Ooze', amount: 2},
        { name: 'Frostwolf Grunt', amount: 2},
        { name: 'Arcane Intellect', amount: 2},
        { name: 'Shattered Sun Cleric', amount: 2},
        { name: 'Water Elemental', amount: 2},
        { name: 'Gnomish Inventor', amount: 2},
        { name: 'Fireball', amount: 2},
        { name: 'Polymorph', amount: 2},
        { name: 'Chillwind Yeti', amount: 2},
        { name: 'Goldshire Footman', amount: 2},
        { name: 'Archmage', amount: 1},
        { name: 'Stormwind Champion', amount: 1},
        { name: 'Flamestrike', amount: 2},
    ]
    super
  end
end
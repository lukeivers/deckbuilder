require './decks/mage_deck'

class ElvenArcherDeck < MageDeck
  def initialize
    @name = 'Elven Archer'
    @base_cards = [
        { name: 'Elven Archer', amount: 2 },
        { name: 'Arcane Missiles', amount: 2 },
        { name: 'Acidic Swamp Ooze', amount: 2},
        { name: 'Bloodfen Raptor', amount: 2},
        { name: 'River Crocolisk', amount: 2},
        { name: 'Shattered Sun Cleric', amount: 2},
        { name: 'Worgen Infiltrator', amount: 2},
        { name: 'Goldshire Footman', amount: 2},
        { name: 'Fireball', amount: 2},
        { name: 'Argent Squire', amount: 2},
        { name: 'Chillwind Yeti', amount: 2},
        { name: 'Kobold Geomancer', amount: 2},
        { name: 'Archmage', amount: 1},
        { name: 'Stormwind Champion', amount: 1},
        { name: 'Murloc Tidecaller', amount: 2},
    ]
    super
  end
end
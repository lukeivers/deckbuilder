require './decks/rogue_deck'

class KithrosRogueDeck < RogueDeck
  def initialize
    @name = 'Kithros Rogue'
    @base_cards = [
        { name: 'Backstab', amount: 2 },
        { name: 'Deadly Poison', amount: 2 },
        { name: 'Eviscerate', amount: 2},
        { name: 'Bloodmage Thalnos', amount: 1},
        { name: 'Defias Ringleader', amount: 2},
        { name: 'Loot Hoarder', amount: 2},
        { name: 'Novice Engineer', amount: 2},
        { name: 'Fan of Knives', amount: 1},
        { name: 'Harvest Golem', amount: 2},
        { name: 'Shattered Sun Cleric', amount: 2},
        { name: 'SI:7 Agent', amount: 2},
        { name: 'Dark Iron Dwarf', amount: 2},
        { name: 'Defender of Argus', amount: 2},
        { name: 'Gnomish Inventor', amount: 2},
        { name: 'Azure Drake', amount: 2},
        { name: 'Argent Commander', amount: 2},
    ]
    super
  end
end

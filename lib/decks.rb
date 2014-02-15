require './deck'

class Decks
  @decks = Array.new
  @decks << Deck.new(
      name: 'Goldshire Footman',
      class: 'Mage',
      cards: [
          { name: 'Shieldbearer', amount: 2 },
          { name: 'Arcane Missiles', amount: 2 },
          { name: 'Acidic Swamp Ooze', amount: 2},
          { name: 'Novice Engineer', amount: 2},
          { name: 'Arcane Intellect', amount: 2},
          { name: 'Shattered Sun Cleric', amount: 2},
          { name: 'Water Elemental', amount: 2},
          { name: 'Gnomish Inventor', amount: 2},
          { name: 'Fireball', amount: 2},
          { name: 'Polymorph', amount: 2},
          { name: 'Chillwind Yeti', amount: 2},
          { name: 'Gurubashi Berserker', amount: 2},
          { name: 'Archmage', amount: 1},
          { name: 'Stormwind Champion', amount: 1},
          { name: 'Flamestrike', amount: 2},
      ]
  )
  @decks << Deck.new(
      name: 'Elven Archer',
      class: 'Mage',
      cards: [
          { name: 'Elven Archer', amount: 2 },
          { name: 'Arcane Missiles', amount: 2 },
          { name: 'Acidic Swamp Ooze', amount: 2},
          { name: 'Novice Engineer', amount: 2},
          { name: 'Arcane Intellect', amount: 2},
          { name: 'Shattered Sun Cleric', amount: 2},
          { name: 'Water Elemental', amount: 2},
          { name: 'Gnomish Inventor', amount: 2},
          { name: 'Fireball', amount: 2},
          { name: 'Polymorph', amount: 2},
          { name: 'Chillwind Yeti', amount: 2},
          { name: 'Gurubashi Berserker', amount: 2},
          { name: 'Archmage', amount: 1},
          { name: 'Stormwind Champion', amount: 1},
          { name: 'Flamestrike', amount: 2},
      ]
  )

  def self.get(opts = {})
    @decks.find { |deck| deck.name == opts[:name] }
  end
end
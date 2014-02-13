require './card'

class Cards
  def self.cards
    return [
        Card.new(name: 'Elven Archer', battlecry: 'Deal 1 damage', attack: 1, health: 1, cost: 1, type: :minion),
        Card.new(name: 'Arcane Missiles', effect: 'Deal 3 damage randomly split among enemy characters', cost: 1,
                 deck_class: 'Mage', type: :spell),
        Card.new(name: 'Frostbolt', effect: 'Deal 3 damage to a character and freeze it', cost: 2, deck_class: 'Mage',
                 type: :spell),
        Card.new(name: 'Acidic Swamp Ooze', battlecry: 'Destroy your opponent\'s weapon', attack: 3, health: 2,
                 cost: 2, type: :minion),
        Card.new(name: 'Novice Engineer', battlecry: 'Draw a card', attack: 1, health: 1, cost: 2, type: :minion),
        Card.new(name: 'Arcane Intellect', effect: 'Draw 2 cards', cost: 3, deck_class: 'Mage', type: :spell),
        Card.new(name: 'Shattered Sun Cleric', battlecry: 'Give a friendly minion +1/+1', attack: 3, health: 2,
                 cost: 3, type: :minion),
        Card.new(name: 'Water Elemental', effect: 'Freeze any character damaged by this minion', attack: 3,
                 health: 6, cost: 4, deck_class: 'Mage', type: :minion),
        Card.new(name: 'Gnomish Inventor', battlecry: 'Draw a card', attack: 2, health: 4, cost: 4, type: :minion),
        Card.new(name: 'Fireball', effect: 'Deal 6 damage', cost: 4, deck_class: 'Mage', type: :spell),
        Card.new(name: 'Polymorph', effect: 'Transform a minion into a 1/1 Sheep', cost: 4, deck_class: 'Mage',
                 type: :spell),
        Card.new(name: 'Chillwind Yeti', attack: 4, health: 5, cost: 4, type: :minion),
        Card.new(name: 'Gurubashi Berserker', effect: 'Whenever this minion takes damage, gain +3 Attack', attack: 2,
                 health: 7, cost: 5, type: :minion),
        Card.new(name: 'Archmage', effect: 'Spell Damage +1', attack: 4, health: 7, cost: 6, type: :minion),
        Card.new(name: 'Stormwind Champion', effect: 'Your other minions have +1/+1', attack: 6, health: 6, cost: 7,
                 type: :minion),
        Card.new(name: 'Flamestrike', effect: 'Deal 4 damage to all enemy minions', cost: 7, deck_class: 'Mage',
                 type: :spell),
        Card.new(name: 'The Coin', effect: 'Gain 1 Mana Crystal this turn only', cost: 0, type: :spell),
    ]
  end

  def self.get(name, amount=1)
    result = Array.new
    card = cards.find { |card| card.name == name }
    amount.times do
      result << card.dup
    end
    result
  end

end
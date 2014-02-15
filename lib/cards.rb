require './card'
Dir["./cards/*.rb"].each { |file| require file }

class Cards
  @cards = [
        ElvenArcher.new,
        ArcaneMissiles.new,
        Frostbolt.new,
        AcidicSwampOoze.new,
        NoviceEngineer.new,
        Card.new(name: 'Arcane Intellect', effect: 'Draw 2 cards', cost: 3, deck_class: 'Mage', type: :spell),
        Card.new(name: 'Shattered Sun Cleric', battlecry: 'Give a friendly minion +1/+1', attack: 3, health: 2,
                 cost: 3, type: :minion),
        Card.new(name: 'Water Elemental', effect: 'Freeze any character damaged by this minion', attack: 3,
                 health: 6, cost: 4, deck_class: 'Mage', type: :minion),
        Card.new(name: 'Gnomish Inventor', battlecry: 'Draw a card', attack: 2, health: 4, cost: 4, type: :minion),
        Card.new(name: 'Fireball', effect: 'Deal 6 damage', cost: 4, deck_class: 'Mage', type: :spell),
        Card.new(name: 'Polymorph', effect: 'Transform a minion into a 1/1 Sheep', cost: 4, deck_class: 'Mage',
                 type: :spell),
	ChillwindYeti.new,
        Card.new(name: 'Gurubashi Berserker', effect: 'Whenever this minion takes damage, gain +3 Attack', attack: 2,
                 health: 7, cost: 5, type: :minion),
        Card.new(name: 'Archmage', effect: 'Spell Damage +1', attack: 4, health: 7, cost: 6, type: :minion),
        Card.new(name: 'Stormwind Champion', effect: 'Your other minions have +1/+1', attack: 6, health: 6, cost: 7,
                 type: :minion),
        Card.new(name: 'Flamestrike', effect: 'Deal 4 damage to all enemy minions', cost: 7, deck_class: 'Mage',
                 type: :spell),
        Card.new(name: 'The Coin', effect: 'Gain 1 Mana Crystal this turn only', cost: 0, type: :spell),
	      Card.new(name: 'Wisp', attack: 1, health: 1, cost: 0, type: :minion),
	      Card.new(name: 'Abusive Sergeant', battlecry: 'Give a minion +2 Attack this turn', attack: 2, health: 1, cost: 1, type: :minion),
	      Card.new(name: 'Argent Squire',  effect: 'Divine Shield', attack: 1, health: 1, cost: 1, type: :minion),
        Card.new(name: 'Angry Chicken',  effect: 'Enrage: +5 Attack', attack: 1, health: 1, cost: 1, type: :minion),
        Card.new(name: 'Bloodsail Corsair',  battlecry: 'Remove 1 Durability from your opponent\'s weapon', attack: 1, health: 2, cost: 1, type: :minion),
        Card.new(name: 'Goldshire Footman',  effect: 'Taunt', attack: 1, health: 2, cost: 1, type: :minion),
        Card.new(name: 'Grimscale Oracle',  effect: 'ALL other Murlocs have +1 Attack', attack: 1, health: 1, cost: 1, type: :minion),
        Card.new(name: 'Hungry Crab',  battlecry: 'Destroy a Murloc and gain +2/+2', attack: 1, health: 2, cost: 1, type: :minion),
        Card.new(name: 'Leper Gnome',  effect: 'Deathrattle: Deal 2 damage to the enemy hero', attack: 2, health: 1, cost: 1, type: :minion),
        Card.new(name: 'Lightwarden',  effect: 'Whenever a character is healed, gain +2 attack', attack: 1, health: 2, cost: 1, type: :minion),
	MurlocRaider.new,
        Card.new(name: 'Murloc Tidecaller',  effect: 'Whenever a Murloc is summoned, gain +1 Attack', attack: 1, health: 2, cost: 1, type: :minion),
        Card.new(name: 'Secretkeeper',  effect: 'Whenever a Secret is played, gain +1/+1', attack: 1, health: 2, cost: 1, type: :minion),
        Card.new(name: 'Shieldbearer',  effect: 'Taunt', attack: 0, health: 4, cost: 1, type: :minion),
        Card.new(name: 'Southsea Deckhand',  effect: 'Has Charge while you have a weapon equipped', attack: 2, health: 1, cost: 1, type: :minion),
        Card.new(name: 'Stonetusk Board',  effect: 'Charge', attack: 1, health: 1, cost: 1, type: :minion),
        Card.new(name: 'Voodoo Doctor',  battlecry: 'Restore 2 Health', attack: 2, health: 1, cost: 1, type: :minion),
        Card.new(name: 'Worgen Infiltrator',  effect: 'Stealth', attack: 2, health: 1, cost: 1, type: :minion),
        Card.new(name: 'Young Dragonhawk',  effect: 'Windfury', attack: 1, health: 1, cost: 1, type: :minion),
        Card.new(name: 'Young Priestess',  effect: 'At the end of your turn, give another random friendly minion +1 Health', attack: 2, health: 1, cost: 1, type: :minion),
        Card.new(name: 'Amani Berserker',  effect: 'Enrage: +3 Attack', attack: 2, health: 3, cost: 2, type: :minion),
        Card.new(name: 'Ancient Watcher',  effect: 'Can\'t Attack', attack: 4, health: 5, cost: 2, type: :minion),
	BloodfenRaptor.new,
        Card.new(name: 'Bloodmage Thalnos',  effect: 'Spell Damage +1 DeathRattle: Draw a card', attack: 1, health: 1, cost: 2, type: :minion),
        Card.new(name: 'Bloodsail Raider',  battlecry: 'Gain Attack equal to the Attack of your weapon', attack: 2, health: 3, cost: 2, type: :minion),
        Card.new(name: 'Bluegill Warrior',  effect: 'Charge', attack: 2, health: 1, cost: 2, type: :minion),
        Card.new(name: 'Crazed Alchemist',  battlecry: 'Swap the Attack and Health of a minion', attack: 2, health: 2, cost: 2, type: :minion),
        Card.new(name: 'Dire Wolf Alpha',  effect: 'Adjacent minions have +1 Attack', attack: 2, health: 2, cost: 2, type: :minion),
        Card.new(name: 'Doomsayer',  effect: 'At the start of your turn, destroy ALL minions', attack: 0, health: 7, cost: 2, type: :minion),
        Card.new(name: 'Faerie Dragon',  effect: 'Can\'t be targeted by Spells or Hero Powers', attack: 3, health: 2, cost: 2, type: :minion),
        Card.new(name: 'Frostwolf Grunt',  effect: 'Taunt', attack: 2, health: 2, cost: 2, type: :minion),
        Card.new(name: 'Ironbeak Owl',  battlecry: 'Silence a minion', attack: 2, health: 1, cost: 2, type: :minion),
        Card.new(name: 'Knife Juggler',  effect: 'After you summon a minion, deal 1 damage to a random enemy', attack: 3, health: 2, cost: 2, type: :minion),
        Card.new(name: 'Kobold Geomancer',  effect: 'Spell Damage +1', attack: 2, health: 2, cost: 2, type: :minion),
        Card.new(name: 'Loot Hoarder',  effect: 'Deathrattle: Draw a card', attack: 2, health: 1, cost: 2, type: :minion),
        Card.new(name: 'Mad Bomber',  battlecry: 'Deal 3 damage randomly split between all other characters', attack: 3, health: 2, cost: 2, type: :minion),
        Card.new(name: 'Mana Addict',  effect: 'Whenever you cast a spell, gain +2 Attack this turn', attack: 1, health: 3, cost: 2, type: :minion),
        Card.new(name: 'Mana Wraith',  effect: 'ALL minions cost (1) more', attack: 2, health: 2, cost: 2, type: :minion),
        Card.new(name: 'Master Swordsmith',  effect: 'At the end of your turn, give another random friendly minion +1 Attack', attack: 1, health: 3, cost: 2, type: :minion),
        Card.new(name: 'Millhouse Manastorm',  battlecry: 'Enemy spells cost (0) next turn', attack: 4, health: 4, cost: 2, type: :minion),
        Card.new(name: 'Murloc Tidehunter',  battlecry: 'Summon a 1/1 Murloc Scout', attack: 2, health: 1, cost: 2, type: :minion),
        Card.new(name: 'Nat Pagle',  effect: 'At the end of your turn, you have a 50% change to draw a card', attack: 0, health: 4, cost: 2, type: :minion),
        Card.new(name: 'Pint-Sized Summoner',  effect: 'The first minion you play each turn costs (1) less', attack: 2, health: 2, cost: 2, type: :minion),
	RiverCrocolisk.new,
        Card.new(name: 'Sunfury Protector',  battlecry: 'Give adjacent minions Taunt', attack: 2, health: 3, cost: 2, type: :minion),
        Card.new(name: 'Wild Pyromancer',  effect: 'After you cast a spell, deal 1 damage to ALL minions', attack: 3, health: 2, cost: 2, type: :minion),
        Card.new(name: 'Youthful Brewmaster',  battlecry: 'Return a friendly minion from the battlefield to your hand', attack: 3, health: 2, cost: 2, type: :minion),
	]

  def self.get(name, amount=1)
    result = Array.new
    card = @cards.find { |card| card.name == name }
    amount.times do
      result << card.dup
    end
    result
  end

end

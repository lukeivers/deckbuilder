require './decks/warrior_deck'

class ReynadWarriorDeck < WarriorDeck
  def initialize
    @name = 'Reynad Warrior'
    @base_cards = [
        { name: 'Argent Squire', amount: 2 },
        { name: 'Leper Gnome', amount: 2 },
        { name: 'Fiery War Axe', amount: 2},
        { name: 'Heroic Strike', amount: 2},
        { name: 'Bloodsail Raider', amount: 2},
        { name: 'Faerie Dragon', amount: 2},
        { name: 'Frothing Berserker', amount: 2},
        { name: 'Harvest Golem', amount: 2},
        { name: 'Mortal Strike', amount: 2},
        { name: 'Arathi Weaponsmith', amount: 2},
        { name: 'Dark Iron Dwarf', amount: 2},
        { name: 'Kor\'kron Elite', amount: 2},
        { name: 'Arcanite Reaper', amount: 2},
        { name: 'Nightblade', amount: 2},
        { name: 'Argent Commander', amount: 2},
    ]
    super
  end
end

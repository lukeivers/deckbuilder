require './decks/warlock_deck'

class MurlockWarlockDeck < WarlockDeck
  def initialize
    @name = 'Murlock Warlock'
    @base_cards = [
        { name: 'Soulfire', amount: 2 },
        { name: 'Abusive Sergeant', amount: 1 },
        { name: 'Blood Imp', amount: 2},
        { name: 'Flame Imp', amount: 2},
        { name: 'Grimscale Oracle', amount: 2},
        { name: 'Leper Gnome', amount: 2},
        { name: 'Murloc Raider', amount: 2},
        { name: 'Murloc Tidecaller', amount: 2},
        { name: 'Voidwalker', amount: 2},
        { name: 'Young Priestess', amount: 1},
        { name: 'Bluegill Warrior', amount: 2},
        { name: 'Knife Juggler', amount: 2},
        { name: 'Murloc Tidehunter', amount: 2},
        { name: 'Coldlight Seer', amount: 2},
        { name: 'Murloc Warleader', amount: 2},
        { name: 'Leeroy Jenkins', amount: 1},
        { name: 'Old Murk-Eye', amount: 1},
    ]
    super
  end
end

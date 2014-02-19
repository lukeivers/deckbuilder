require './decks/hunter_deck'

class EricHunterDeck < HunterDeck
  def initialize
    @name = 'Eric Hunter'
    @base_cards = [
        { name: 'Arcane Shot', amount: 2 },
        { name: 'Tracking', amount: 2 },
        { name: 'Abusive Sergeant', amount: 2},
        { name: 'Leper Gnome', amount: 2},
        { name: 'Timber Wolf', amount: 2},
        { name: 'Explosive Trap', amount: 2},
        { name: 'Misdirection', amount: 2},
        { name: 'Unleash the Hounds', amount: 2},
        { name: 'Bluegill Warrior', amount: 2},
        { name: 'Ironbeak Owl', amount: 2},
        { name: 'Starving Buzzard', amount: 1},
        { name: 'Eaglehorn Bow', amount: 2},
        { name: 'Kill Command', amount: 2},
        { name: 'Arcane Golem', amount: 2},
        { name: 'Wolfrider', amount: 2},
        { name: 'Leeroy Jenkins', amount: 1},
    ]
    super
  end
end

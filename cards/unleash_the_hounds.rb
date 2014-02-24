require './cards/spell'

class UnleashTheHounds < Spell
  def initialize
    super
    self.cost = 2
    self.name = 'Unleash the Hounds'
    self.deck_class = 'Hunter'
  end

  def battlecry
    super
    amount = owner.opponent.minions.size
    amount.times do
      owner.summon Cards.get('Hound')
    end
  end

end

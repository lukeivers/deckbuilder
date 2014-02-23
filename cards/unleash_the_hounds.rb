require './cards/spell'

class UnleashTheHounds < Spell
  def initialize
    self.cost = 2
    self.name = 'Unleash the Hounds'
    self.deck_class = 'Hunter'
    super
  end

  def battlecry
    super
    amount = owner.opponent.minions.size
    amount.times do
      self.owner.summon(Cards.get('Hound').first)
    end
  end

end

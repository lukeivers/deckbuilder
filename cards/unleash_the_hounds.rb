require './cards/spell'

class UnleashTheHounds < Spell
  def initialize
    @cost = 2
    @name = 'Unleash the Hounds'
    @deck_class = 'Hunter'
    super
  end

  def play(player)
    super
    amount = owner.opponent.minions.size
    amount.times do
      self.owner.summon(Cards.get('Hound').first)
    end
  end

end

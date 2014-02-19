require './cards/spell'

class FanOfKnives < Spell
  def initialize
    @cost = 3
    @name = 'Fan of Knives'
    @damage = 1
    @deck_class = 'Rogue'
    super
  end
  def play(player)
    super
    self.owner.opponent.minions.each do |minion|
      minion.deal_damage(self.damage)
    end
  end
  end

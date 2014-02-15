require './cards/spell'

class Flamestrike < Spell
  def initialize
    @cost = 7
    @name = 'Flamestrike'
    @damage = 4
    super
  end
  def play(player)
    player.opponent.minions.each do |minion|
      minion.deal_damage(@damage + player.spell_damage)
    end
  end
end
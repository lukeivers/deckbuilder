require './minion'

class VioletTeacher < Minion
  def initialize
    super
    self.cost = 4
    self.attack = 3
    self.max_health = 5
    self.name = "Violet Teacher"
	#Whenever you cast a spell, summon a 1/1 Violet Apprentice
  end

  def play(player)
    super
    $game.add_hook :spell_cast, self
  end

  def die
    super
    $game.remove_hook :spell_cast, self
  end

  def on_spell_cast(opts = {})
    if opts[:source].owner == owner
      owner.summon Cards.get(name: 'Violet Apprentice')
    end
  end
end

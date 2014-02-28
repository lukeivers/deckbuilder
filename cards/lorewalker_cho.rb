require './minion'

class LorewalkerCho < Minion
  def initialize
    super
    self.cost = 2
    self.name = 'Lorewalker Cho'
    self.attack = 0
    self.max_health = 4
    self.legendary = true
    self.auto_hook = :card_played
  end

  def on_card_played(opts = {})
    opts[:source].owner.opponent.add_card opts[:source].dup
  end


end

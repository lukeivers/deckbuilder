require './minion'

class Lightwarden < Minion
  def initialize
    super
    self.name = "Lightwarden"
    self.cost = 1
    self.attack = 1
    self.max_health = 2
    self.auto_hook = :heal
  end

  def on_heal(opts = {})
    self.attack += 2
  end
end

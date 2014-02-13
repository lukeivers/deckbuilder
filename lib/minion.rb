require './character'

class Minion < Character
  attr_accessor :owner

  def initialize(opts = {})
    @owner = opts[:owner]
    super(max_health: opts[:card].health, attack: opts[:card].attack, name: opts[:card].name)
  end
end
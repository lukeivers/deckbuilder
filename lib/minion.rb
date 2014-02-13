class Minion < Character
  def initialize(opts = {})
    if opts[:card]
      super(max_health: opts[:card].health, attack: opts[:card].attack)
    end
  end
end
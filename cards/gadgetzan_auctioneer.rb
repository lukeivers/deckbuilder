require './minion'

class GadgetzanAuctioneer < Minion
  def initialize
    super
    self.cost = 5
    self.attack = 4
    self.max_health = 4
    self.name = "Gadgetzan Auctioneer"
    self.auto_hook = :spell_cast
	end

  def on_spell_cast(opts = {})
    if opts[:source].owner == self.owner
      owner.draw 1
    end
  end
end

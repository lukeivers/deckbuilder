require './minion'

class GadgetzanAuctioneer < Minion
  def initialize
    super
    self.cost = 5
    self.attack = 4
    self.max_health = 4
    self.name = "Gadgetzan Auctioneer"
	#Whenever you cast a spell, draw a card
  end

end

require './minion'

class EliteTaurenChieftain < Minion
  def initialize
    super
    self.name = "Elite Tauren Chieftain"
    self.cost = 5
    self.attack = 5
    self.max_health = 5
	  self.legendary = true
  end

  def battlecry
    super
    temp = rand(3)
    case temp
      when 0
        owner.add_card Cards.get name: 'I Am Murloc'
      when 1
        owner.add_card Cards.get name: 'Power of the Horde'
      when 2
        owner.add_card Cards.get name: 'Rogues Do It From Behind'
    end
    temp = rand(3)
    case temp
      when 0
        owner.opponent.add_card Cards.get name: 'I Am Murloc'
      when 1
        owner.opponent.add_card Cards.get name: 'Power of the Horde'
      when 2
        owner.opponent.add_card Cards.get name: 'Rogues Do It From Behind'
    end
	end
end

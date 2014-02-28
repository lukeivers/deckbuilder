require './minion'

class GelbinMekkatorque < Minion
  def initialize
    super
    self.name = "Gelbin Mekkatorque"
    self.cost = 6
    self.attack = 6
    self.max_health = 6
	  self.legendary = true
  end

  def battlecry
    super
    temp = rand(4)
    case temp
      when 0
        owner.summon Cards.get name: 'Emboldener 3000'
      when 1
        owner.summon Cards.get name: 'Homing Chicken'
      when 2
        owner.summon Cards.get name: 'Poultryizer'
      when 3
        owner.summon Cards.get name: 'Repair Bot'
    end
	end
end

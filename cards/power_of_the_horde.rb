require './spell'

class PowerOfTheHorde < Spell
  def initialize
    super
    self.cost = 4
    self.name = 'Power of the Horde'
  end

  def battlecry
    super
    temp = rand(6)
    case temp
      when 0
        owner.summon Cards.get name: 'Frostwolf Grunt'
      when 1
        owner.summon Cards.get name: 'Tauren Warrior'
      when 2
        owner.summon Cards.get name: 'Thrallmar Farseer'
      when 3
        owner.summon Cards.get name: 'Silvermoon Guardian'
      when 4
        owner.summon Cards.get name: 'Sen\'jin Guardian'
      when 5
        owner.summon Cards.get name: 'Cairne Bloodhoof'
    end
  end
end

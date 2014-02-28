require './spell'

class IAmMurloc < Spell
  def initialize
    super
    self.cost = 4
    self.name = 'I Am Murloc'
  end

  def battlecry
    super
    quantity = rand(3) + 3
    quantity.times { owner.summon Cards.get name: 'Murloc' }
  end
end

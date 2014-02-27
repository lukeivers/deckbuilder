require './spell'

class IAmMurloc < Spell
  def initialize
    super
    self.cost = 4
    self.name = 'I Am Murloc'
  end

  def battlecry
    super
	#Summon three, four, or five 1/1 Murlocs
  end
end

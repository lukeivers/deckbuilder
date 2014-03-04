require './spell'

class MirrorImage < Spell
  def initialize
    super
    self.cost = 1
    self.name = 'Mirror Image'
    self.deck_class = 'Mage'
  end

  def battlecry
	#Summon two 0/2 minions with Taunt.  I have not added this card in, because the summoned minion has the same name as this spell.....
    end
end

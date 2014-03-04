require './spell'

class IceLance < Spell
  def initialize
    super
    self.cost = 1
    self.name = 'Ice Lance'
    self.deck_class = 'Mage'
  end

  def battlecry
	#Freeze a character.  If it was already frozen, deal 4 damage instead.
    end
  end
end

require './cards/spell'

class Misdirection < Spell
  def initialize
    @cost = 2
    @name = 'Misdirection'
    @deck_class = 'Hunter'
	#@secret = true
	#When a character attacks your hero, instead he attacks another random character
    super
  end

end

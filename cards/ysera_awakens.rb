require './spell'

class YseraAwakens < Spell
  def initialize
    super
    self.cost = 2
    self.name = 'Ysera Awakens'
  end

	#Deal 5 damage to all characters except Ysera

end

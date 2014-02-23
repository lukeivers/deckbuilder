require './cards/minion'

class AlarmOBot < Minion
  def initialize
    super
    self.cost = 3
    self.name = 'Alarm-o-Bot'
    self.attack = 0
    self.max_health = 3
	end

  def start_turn
    super
    replacement = owner.hand.shuffle.find {|card| card.minion?}
    if replacement
      owner.play_card(replacement)
      owner.return_minion_to_hand(self)
    end
  end

end

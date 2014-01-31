class Game < ActiveRecord::Base
  belongs_to :player1, source: :player
  belongs_to :player2, source: :player
  belongs_to :current_player, source: :player

  def after_initialize
    if rand(0) == 0
      self.current_player = self.player1
    else
      self.current_player = self.player2
    end
    self.current_player.first_draw(3)
    self.other_player.first_draw(4)
    self.player2.add_coin
  end

  def play
    current
  end

  def other_player
    if self.current_player == self.player1
      self.player2
    else
      self.player1
    end
  end
end

class Game < ActiveRecord::Base
  belongs_to :player1
  belongs_to :player2
  belongs_to :current_player
end

class Hand < ActiveRecord::Base
  belongs_to :player
  has_and_belongs_to_many :cards

  def add(new_cards)
    self.cards.concat(new_cards)
  end

end

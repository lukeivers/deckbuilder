class Card
  attr_accessor :card_database_card, :attack, :defense, :silenced, :frozen, :stealth,
                :divine_shield, :windfury, :cost

  def initialize(card_database_card)
    @card_database_card = card_database_card
    @attack = @card_database_card.attack
    @defense = @card_database_card.defense
    @silenced = false
    @frozen = false
    @stealth = @card_database_card.stealth
    @divine_shield = @card_database_card.divine_shield
    @windfury = @card_database_card.windfury
    @cost = @card_database_card.cost
  end

end
require 'player'

class Card
=begin
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
=end

  attr_accessor :name, :battlecry, :effect, :attack, :health, :cost

  def initialize(opts = {})
    @name = opts[:name]
    @battlecry = opts[:battlecry]
    @effect = opts[:effect]
    @attack = opts[:attack]
    @health = opts[:health]
    @cost = opts[:cost]
  end

  def play(player)
    player.remove_mana(self.cost)
    case self.type
      when :minion
        minion = Minion.new(card: self)
        if @battlecry
          Card.parse(self.battlecry, player, minion)
        end
        player.add_minion(minion)
      when :spell
        Card.parse(self.effect, player)
    end
  end

  def self.parse(string, player, minion = nil)
    words = string.downcase.split(' ')
    if words[0] == 'deal'
      if words[2] == 'damage'
        damage_amount = words[1].to_i
        available_targets = Array.new
        available_targets << player.opponent
        available_targets.concat player.opponent.minions
        if words.length == 3 or (words[3] == 'to' and words[5] == 'character')
          available_targets.sort { |a, b| a.health <=> b.health }
          target = available_targets[0]
          target.deal_damage(damage_amount)
          if words.length > 6 and words[7] == 'freeze'
            target.freeze
          end
        elsif words[3] == 'randomly'
          if words[6] == 'enemy'
            damage_amount.times do
              available_targets.shuffle
              target = availalable_targets[0]
              target.deal_damage(1)
            end
          end
        end
      end
    end
  end
end
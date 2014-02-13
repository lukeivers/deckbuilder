require './player'
require './minion'

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

  attr_accessor :name, :battlecry, :effect, :attack, :health, :cost, :type

  def initialize(opts = {})
    @name = opts[:name]
    @battlecry = opts[:battlecry]
    @effect = opts[:effect]
    @attack = opts[:attack]
    @health = opts[:health]
    @cost = opts[:cost]
    @type = opts[:type]
  end

  def play(player)
    player.remove_mana(self.cost)
    case self.type
      when :minion
        minion = Minion.new(card: self, owner: player)
        if @battlecry
          Card.parse(self.battlecry, self, player, minion)
        end
        player.add_minion(minion)
      when :spell
        Card.parse(self.effect, self, player)
    end
  end

  def self.parse(string, card, player, minion = nil)
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
          puts player.name + ' dealt ' + damage_amount.to_s + ' damage to ' + target.name + ' with a ' + card.name + '.'
          if words.length > 6 and words[7] == 'freeze'
            target.freeze
          end
        elsif words[3] == 'randomly'
          if words[6] == 'enemy'
            damage_amount.times do
              available_targets.shuffle
              target = available_targets[0]
              target.deal_damage(1)
              puts player.name + ' dealt 1 damage to ' + target.name + ' with a ' + card.name + '.'
            end
          end
        end
      end
    elsif words[0] == 'destroy' and words[3] == 'weapon'
      player.opponent.set_weapon(nil)
    elsif words[0] == 'draw'
      @draw_amount = 0
      if words[1] == 'a'
        @draw_amount = 1
      else
        @draw_amount = words[1].to_i
      end
      player.draw(@draw_amount)
    end
  end
end
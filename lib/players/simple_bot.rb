require './player'

class SimpleBot < Player
  def initialize
    @name = 'Simple Bot'
    super
  end

  def choose_bonus_minion(attack_bonus, health_bonus)
    bonus_minion = @minions.sort {|a, b| a.health <=> b.health}.last
    if health_bonus > 0
      bonus_minion = @minions.sort {|a, b| a.health <=> b.health}.first
    end
    bonus_minion
  end

  def best_target(damage, evades_taunt=false)
    targets = determine_targets(evades_taunt)
    targets.sort {|a, b| a.health <=> b.health}
    target = targets[0]
    targets.each do |potential_target|
      if potential_target.health <= damage
        target = potential_target
      end
    end
    target
  end

  def best_smurfing_target
    targets = determine_targets(true)
    targets.delete @opponent
    targets.sort {|a, b| a.attack <=> b.attack}
    targets.last
  end

  def mulligan
    super
    one_mana = nil
    two_mana = nil
    three_mana = nil
    number_discards = 0
    @hand.each do |card|
      if card.cost > 3 or (card.cost == 1 and one_mana) or (card.cost == 2 and two_mana) or (card.cost == 3 and three_mana)
        @deck.add_card(card)
        @hand.delete card
        number_discards += 1
      end
      if card.cost == 1
        one_mana = card
      elsif card.cost == 2
        two_mana = card
      elsif card.cost == 3
        three_mana = card
      end
    end
    self.draw(number_discards)
  end

  def play
    @hand.sort { |a, b| a.cost <=> b.cost }
    @hand.reverse.each do |card|
      if @mana > card.cost
        card.play(self)
        Logger.log @name + ' played ' + card.name + '.'
        @hand.delete(card)
      end
    end


    if @minions.size > 0
      targets = determine_targets

      @minions.each do |minion|
        if minion.can_attack?
          target = targets[0]
          target_name = target.name
          dead = minion.attack_target(target)
          if dead == -1
            Logger.log self.name + ' killed ' + target_name + '.'
            if target == opponent
              break
            end
            targets.delete(target)
            if targets.size == 0
              targets = determine_targets
            end
          end
        end
      end
    end
  end

end
require './player'

class SimpleBot < Player
  def initialize(opts = {})
    @name = 'Simple Bot'
    super
  end

  def choose_best_card(cards)
    #TODO: implement simple_bot best card chooser
    super
  end

  def best_silence_target
    #TODO: implement simple_bot best silence target
    super
  end

  def choose_bonus_minion(opts = {})
    bonus_minion = @minions.sort {|a, b| a.health <=> b.health}.last
    if opts[:health] > 0
      bonus_minion = @minions.sort {|a, b| a.health <=> b.health}.first
    end
    bonus_minion
  end

  def choose_adjacent_targets(opts = {})
    index = minions.find_index(self)
    m1 = nil
    m2 = nil
    if index == 0
      if minions.size > 1
        m1 = minions[1]
        if minions.size > 2
          m2 = self.owner.minions[-1]
        end
      end
    else
      m1 = minions[index - 1]
      if minions.size > 2
        if index == minions.size - 1
          m2 = minions[0]
        else
          m2 = minions[index + 1]
        end
      end
    end
    if m1
      m1.taunt = true
      m1.add_attack 1
      m1.add_max_health 1
    end
    if m2
      m2.taunt = true
      m2.add_attack 1
      m2.add_max_health 1
    end
  end

  def best_target(opts = {})
    targets = determine_targets(opts)
    target = targets.sort {|a, b| a.health <=> b.health}.find {|a| a.health <= opts[:damage]}
    target || targets.sort {|a, b| a.attack <=> b.attack}.reverse.first
  end

  def best_smurfing_target
    targets = determine_targets(true)
    targets.delete @opponent
    targets.sort {|a, b| a.attack <=> b.attack}
    targets.last
  end

  def mulligan
    #one_mana = nil
    #two_mana = nil
    #three_mana = nil
    #number_discards = 0
    #@hand.each do |card|
    #  if card.cost > 3 or (card.cost == 1 and one_mana) or (card.cost == 2 and two_mana) or (card.cost == 3 and three_mana)
    #    @deck.add_card(card)
    #    @hand.delete card
    #    number_discards += 1
    #  end
    #  if card.cost == 1
    #    one_mana = card
    #  elsif card.cost == 2
    #    two_mana = card
    #  elsif card.cost == 3
    #    three_mana = card
    #  end
    #end
    #self.draw(number_discards)
  end

  def play
    @hand.sort { |a, b| a.cost <=> b.cost }
    @hand.reverse.each do |card|
      if card.name == 'The Coin'
        if self.hand.find { |card| card.cost == self.mana + 1 }
          card.play(self)
        end
      elsif @mana > card.cost
        card.play(self)
        Logger.log @name + ' played ' + card.name + '.'
        @hand.delete(card)
      end
    end

    if self.mana >= 2
      self.deck.hero_power(self)
          Logger.log @name + ' used its hero power.'
    end

    #TODO: implement simple_bot and aggro_bot and random_bot player attack if they have a weapon
    if @minions.size > 0
      @minions.each do |minion|
        if minion.can_attack?
          targets = determine_targets
          target = targets.find {|targ| targ.health <= minion.attack}
          target = targets.first if target == nil
          minion.attack_target(target)
          if target.dead?
            if target == opponent
              break
            end
          end
        end
      end
    end
  end

end








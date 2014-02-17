require './player'

class RandomBot < Player
  def initialize
    @name = 'Random Bot'
    super
  end

  def play
    @hand.shuffle.each do |card|
      if @mana > card.cost
        card.play(self)
        Logger.log @name + ' played ' + card.name + '.'
        @hand.delete(card)
      end
    end

    if self.mana >= 2
      self.deck.hero_power(self)
          Logger.log @name + ' used its hero power.'
    end

    if @minions.size > 0
      targets = determine_targets

      @minions.each do |minion|
        if minion.can_attack?
          target = targets.shuffle.first
          if target == nil or target.dead?
            targets.delete target
            if targets.size == 0
              targets = determine_targets
            end
            target = targets.shuffle.first
          end
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

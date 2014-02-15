require './player'

class RandomBot < Player
  def initialize
    @name = 'Random Bot'
    super
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
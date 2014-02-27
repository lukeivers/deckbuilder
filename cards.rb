require './card'
Dir["./cards/*.rb"].each { |file| require file }

class Cards
  @cards = Array.new
  Dir["./cards/*.rb"].each do |file|
    @cards << Object.const_get(file[8..-4].capitalize.gsub(/_[a-z]/) { |a| a.upcase }.gsub('_', '')).new
  end

  @no_mutate_cards = [
    DragonWhelp.new,
    TheCoin.new,
    MurlocScout.new,
    DefiasBandit.new,
    DamagedGolem.new,
    Hound.new,
	  Imp.new,
	  Bananas.new,
    Boar.new,
    Devilsaur.new,
    Squirrel.new,
    MechanicalDragonling.new,
    VioletApprentice.new,
    Squire.new,
    RoguesDoItFromBehind.new,
    IAmMurloc.new,
    PowerOfTheHorde.new,
  ]

  def self.get(opts = {})
    result = Array.new
    card = @cards.find { |card| card.name == opts[:name] }
    if opts[:amount]
      opts[:amount].times do
        result << card.dup
      end
    else
      result = card.dup
    end
    result
  end

  def self.get_random(deck)
    possibles = @cards.select do |card|
      (card.deck_class.nil? or card.deck_class == deck.deck_class) and
          not deck.include? card and
          not @no_mutate_cards.include? card
    end
    possibles[rand(possibles.length)]
  end

end

require './card'
Dir["./cards/*.rb"].each { |file| require file }

class Cards
  @cards = [
        ElvenArcher.new,
	Innervate.new,
	Soulfire.new,
        ArcaneMissiles.new,
        Frostbolt.new,
        AcidicSwampOoze.new,
        NoviceEngineer.new,
        ArcaneIntellect.new,
        ShatteredSunCleric.new,
        WaterElemental.new,
        GnomishInventor.new,
        Fireball.new,
        Polymorph.new,
	ChillwindYeti.new,
        #GurubashiBerserker.new,
	LeperGnome.new,
	Archmage.new,
        StormwindChampion.new,
        Flamestrike.new,
        TheCoin.new,
	Shieldbearer.new,
        MurlocRaider.new,
        BloodfenRaptor.new,
	Wisp.new,
	LootHoarder.new,
	GoldshireFootman.new,
	FrostwolfGrunt.new,
	StonetuskBoar.new,
	SouthseaDeckhand.new,
	BluegillWarrior.new,
        RiverCrocolisk.new,
	WorgenInfiltrator.new,
	KoboldGeomancer.new,
	ArgentSquire.new,
	AbusiveSergeant.new,
	BloodImp.new,
	GrimscaleOracle.new,
	MurlocTidecaller.new,
	Voidwalker.new,
	YoungPriestess.new,
	KnifeJuggler.new,
	MurlocTidehunter.new,
	ColdlightSeer.new,
	MurlocWarleader.new,
	LeeroyJenkins.new,
	OldMurkeye.new,
	AcolyteOfPain.new,
	AngryChicken.new,
	BloodsailCorsair.new,
	HungryCrab.new,
	Lightwarden.new,
	Secretkeeper.new,
	VoodooDoctor.new,
	YoungDragonhawk.new,
=begin
        Card.new(name: 'Amani Berserker',  effect: 'Enrage: +3 Attack', attack: 2, health: 3, cost: 2, type: :minion),
        Card.new(name: 'Ancient Watcher',  effect: 'Can\'t Attack', attack: 4, health: 5, cost: 2, type: :minion),
	      Card.new(name: 'Bloodmage Thalnos',  effect: 'Spell Damage +1 DeathRattle: Draw a card', attack: 1, health: 1, cost: 2, type: :minion),
        Card.new(name: 'Bloodsail Raider',  battlecry: 'Gain Attack equal to the Attack of your weapon', attack: 2, health: 3, cost: 2, type: :minion),
        Card.new(name: 'Crazed Alchemist',  battlecry: 'Swap the Attack and Health of a minion', attack: 2, health: 2, cost: 2, type: :minion),
        Card.new(name: 'Dire Wolf Alpha',  effect: 'Adjacent minions have +1 Attack', attack: 2, health: 2, cost: 2, type: :minion),
        Card.new(name: 'Doomsayer',  effect: 'At the start of your turn, destroy ALL minions', attack: 0, health: 7, cost: 2, type: :minion),
        Card.new(name: 'Faerie Dragon',  effect: 'Can\'t be targeted by Spells or Hero Powers', attack: 3, health: 2, cost: 2, type: :minion),
        Card.new(name: 'Ironbeak Owl',  battlecry: 'Silence a minion', attack: 2, health: 1, cost: 2, type: :minion),
        Card.new(name: 'Mad Bomber',  battlecry: 'Deal 3 damage randomly split between all other characters', attack: 3, health: 2, cost: 2, type: :minion),
        Card.new(name: 'Mana Addict',  effect: 'Whenever you cast a spell, gain +2 Attack this turn', attack: 1, health: 3, cost: 2, type: :minion),
        Card.new(name: 'Mana Wraith',  effect: 'ALL minions cost (1) more', attack: 2, health: 2, cost: 2, type: :minion),
        Card.new(name: 'Master Swordsmith',  effect: 'At the end of your turn, give another random friendly minion +1 Attack', attack: 1, health: 3, cost: 2, type: :minion),
        Card.new(name: 'Millhouse Manastorm',  battlecry: 'Enemy spells cost (0) next turn', attack: 4, health: 4, cost: 2, type: :minion),
        Card.new(name: 'Nat Pagle',  effect: 'At the end of your turn, you have a 50% change to draw a card', attack: 0, health: 4, cost: 2, type: :minion),
        Card.new(name: 'Pint-Sized Summoner',  effect: 'The first minion you play each turn costs (1) less', attack: 2, health: 2, cost: 2, type: :minion),
	      Card.new(name: 'Sunfury Protector',  battlecry: 'Give adjacent minions Taunt', attack: 2, health: 3, cost: 2, type: :minion),
        Card.new(name: 'Wild Pyromancer',  effect: 'After you cast a spell, deal 1 damage to ALL minions', attack: 3, health: 2, cost: 2, type: :minion),
        Card.new(name: 'Youthful Brewmaster',  battlecry: 'Return a friendly minion from the battlefield to your hand', attack: 3, health: 2, cost: 2, type: :minion),
=end
	]

  def self.get(name, amount=1)
    result = Array.new
    card = @cards.find { |card| card.name == name }
    amount.times do
      result << card.dup
    end
    result
  end

  def self.get_random(deck)
    possibles = @cards.select do |card|
      (card.deck_class.nil? or card.deck_class == deck.deck_class) and
          not deck.include? card and
          card.name != 'The Coin'
    end
    possibles[rand(possibles.length)]
  end

end

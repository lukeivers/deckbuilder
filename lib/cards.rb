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
  FlameImp.new,
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
  DragonWhelp.new,
  MurlocScout.new,
	AcolyteOfPain.new,
	AngryChicken.new,
	BloodsailCorsair.new,
	HungryCrab.new,
	Lightwarden.new,
	Secretkeeper.new,
	VoodooDoctor.new,
	YoungDragonhawk.new,
	AmaniBerserker.new,
	BloodmageThalnos.new,
	MasterSwordsmith.new,
	AncientWatcher.new,
	BloodsailRaider.new,
	CrazedAlchemist.new,
	DireWolfAlpha.new,
	Doomsayer.new,
	FaerieDragon.new,
	IronbeakOwl.new,
	MadBomber.new,
	ManaAddict.new,
=begin
        Card.new(name: 'Mana Wraith',  effect: 'ALL minions cost (1) more', attack: 2, health: 2, cost: 2, type: :minion),
        Card.new(name: 'Millhouse Manastorm',  battlecry: 'Enemy spells cost (0) next turn', attack: 4, health: 4, cost: 2, type: :minion),
        Card.new(name: 'Nat Pagle',  effect: 'At the end of your turn, you have a 50% change to draw a card', attack: 0, health: 4, cost: 2, type: :minion),
        Card.new(name: 'Pint-Sized Summoner',  effect: 'The first minion you play each turn costs (1) less', attack: 2, health: 2, cost: 2, type: :minion),
	      Card.new(name: 'Sunfury Protector',  battlecry: 'Give adjacent minions Taunt', attack: 2, health: 3, cost: 2, type: :minion),
        Card.new(name: 'Wild Pyromancer',  effect: 'After you cast a spell, deal 1 damage to ALL minions', attack: 3, health: 2, cost: 2, type: :minion),
        Card.new(name: 'Youthful Brewmaster',  battlecry: 'Return a friendly minion from the battlefield to your hand', attack: 3, health: 2, cost: 2, type: :minion),
=end
	]

  @no_mutate_cards = [
      DragonWhelp.new,
      TheCoin.new,
      MurlocScout.new,
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
          not @no_mutate_cards.include? card
    end
    possibles[rand(possibles.length)]
  end

end

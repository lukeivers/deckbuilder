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
	Backstab.new,
	DeadlyPoison.new,
	Eviscerate.new,
	DefiasRingleader.new,
	FanOfKnives.new,
	HarvestGolem.new,
	SI7Agent.new,
	DarkIronDwarf.new,
	DefenderOfArgus.new,
	AzureDrake.new,
	ArgentCommander.new,
	ManaWraith.new,
	MillhouseManastorm.new,
	NatPagle.new,
	PintSizedSummoner.new,
	SunfuryProtector.new,
	WildPyromancer.new,
	YouthfulBrewmaster.new,
	FieryWarAxe.new,
	HeroicStrike.new,
	FrothingBerserker.new,
	MortalStrike.new,
	ArathiWeaponsmith.new,
	KorkronElite.new,
	ArcaniteReaper.new,
	Nightblade.new,
	]

  @no_mutate_cards = [
      DragonWhelp.new,
      TheCoin.new,
      MurlocScout.new,
      DefiasBandit.new,
      DamagedGolem.new,
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

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
	ArcaneShot.new,
	TimberWolf.new,
	ExplosiveTrap.new,
	Misdirection.new,
	UnleashTheHounds.new,
	StarvingBuzzard.new,
	EaglehornBow.new,
	KillCommand.new,
	ArcaneGolem.new,
	Wolfrider.new,
  DamagedGolem.new,
  DefiasBandit.new,
  Hound.new,
  Tracking.new,
	AlarmOBot.new,
	BigGameHunter.new,
	BloodKnight.new,
	ColdlightOracle.new,
	DalaranMage.new,
	Demolisher.new,
	InjuredBlademaster.new,
	IronforgeRifleman.new,
	IronfurGrizzly.new,
	JunglePanther.new,
	EarthenRingFarseer.new,
	EmperorCobra.new,
	FlesheatingGhoul.new,
	ImpMaster.new,
	KingMukla.new,
	MagmaRager.new,
	MindControlTech.new,
	QuestingAdventurer.new,
	RagingWorgen.new,
	RaidLeader.new,
	RazorfenHunter.new,
	ScarletCrusader.new,
	SilverbackPatriarch.new,
	SouthseaCaptain.new,
	TaurenWarrior.new,
	ThrallmarFarseer.new,
	TinkmasterOverspark.new,
	]

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
  ]

  def self.get(opts = {})
    result = Array.new
    card = @cards.find { |card| card.name == opts[:name] }
    if opts[:amount]
      opts[:amount].times do
        result << card.dup
      end
    else
      result = card
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

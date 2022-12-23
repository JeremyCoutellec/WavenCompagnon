enum Caract {
  pvHero,
  atHero,
  atAdj,
  addATUntilEnd,
  arHero,
  doubleARHero,
  arHeroAndCompagnonOnTP,
  defenseHero,
  esquiveHero,
  riposteHero,
  drainHero,
  addDrainHero,
  xpHero,
  ccHero,
  ccMagic,
  degatCCHero,
  degatCCMagic,
  dropKama,
  dropBrassard,
  dropSort,
  dropAll,
  aura,
  heal,
  healAT,
  shield,
  shieldAll,
  collision,
  collisionPA,
  collisionAddPA,
  repousse2,
  repousse2Adj,
  repousse2Add,
  pvCompagnon,
  atCompagnon,
  drainCompagnon,
  addDrainCompagnon,
  atBehind,
  ccCompagnon,
  degatCCCompagnon,
  canFirstSummonTwice,
  attackRebondCompagnon,
  attackGreleCompagnon,
  attackTourbeCompagnon,
  attackExploCompagnon,
  summonfirstInciblable,
  summonfirstp50PvToAR,
  summonDephasage,
  summonATHeroToAR,
  summonShieldHero,
  summonShieldCompagnon,
  summon25ATHero,
  summon25AT,
  summon50AT,
  summonAdd15AT,
  summonPA,
  deathATCompagnonToARHero,
  deathCompagnonEther,
  deathCompagnonPA,
  deathCompagnonAddPA,
  deathCompagnonAddCard,
  deathCompagnonReduceCard,
  deathCompagnon5PVHero,
  deathDoubleATCompagnonToARHero,
  magicAll,
  magicEau,
  mouille,
  mouilleAutour,
  ftMouille,
  addMouille,
  grele,
  grele2Times,
  magicGrele,
  p20cardEau,
  p5cardEau,
  p15cardEau,
  ftFlot,
  killEau,
  add5KillEau,
  magicAir,
  evente,
  eventeAutour,
  ftEvente,
  addEvent,
  p20cardAir,
  p5cardAir,
  p15cardAir,
  ftCaracole,
  killAir,
  add5KillAir,
  rebond,
  rebond2Times,
  magicRebond,
  magicTerre,
  boueux,
  boueuxAutour,
  ftBoueux,
  addBoueux,
  p20cardTerre,
  p5cardTerre,
  p15cardTerre,
  ftBroyage,
  killTerre,
  add5KillTerre,
  tourbe,
  tourbe2Times,
  magicTourbe,
  magicFeu,
  huile,
  huileAutour,
  ftHuile,
  addHuile,
  p20cardFeu,
  p5cardFeu,
  p15cardFeu,
  ftBoom,
  killFeu,
  add5KillFeu,
  explo,
  explo2Times,
  magicExplo,
  g1510ATHero,
  g15ft1Ether,
  g15ft1addEther,
  ftPA,
  ftAddPa,
  ftAdd2Cards,
  add1card,
  astral,
  ftAstral,
  cibleAstral,
  addAstral,
  g15ftReduceCards,
  ft5pvHeroToAR,
  g12ft2PA,
  g12ftAdd2PA,
  g12ft1aura,
  ftAddCean,
  ftAddCtane,
  ftAddCypress,
  ftAddRagan,
  ftp10MagicTerreBoueux,
  ftp10MagicFeuHuile,
  ftp10MagicEauMouille,
  ftp10MagicAirEvent,
  nextTShieldTo25AT,
  nextTShieldAdd25AT,
  ouragan,
  ouraganAdd,
  p50Ouragan,
  eboulement,
  eboulementAdd,
  p50Eboulement,
  meteore,
  meteoreAdd,
  p50Meteore,
  foudre,
  foudreAdd,
  p50Foudre,
  avalanche,
  avalancheAdd,
  p50Avalanche,
  geyser,
  geyserAdd,
  p50Geyser,
  reduceLastCard,
  reduce2NextCards,
  reduce2FirstCards,
  goback2,
  tpBehind,
  tpBehindHero,
  tpCompagnon,
  replay
}

enum CaractType {
  pv,
  at,
  defense,
  esquive,
  riposte,
  drain,
  xp,
  cc,
  degatsCC,
  drop,
  aura,
  soin,
  collision,
  rebond,
  grele,
  tourbe,
  explo,
  ar,
  dephasage,
  bouclier,
  paReserve,
  jauge,
  draw,
  reductCost,
  allMagic,
  magicEau,
  mouille,
  cardEau,
  kill,
  addCard,
  magicAir,
  evente,
  cardAir,
  magicTerre,
  boueux,
  cardTerre,
  magicFeu,
  huile,
  cardFeu,
  astral,
  affinite,
  mouvement
}

class WavenCaract {
  Caract? _caract;
  int? _number;
  int? _grimoire;
  bool _attaque = false;
  bool _critique = false;
  bool _startFight = false;
  bool _firstTour = false;
  bool _debutTour = false;
  bool _finTour = false;
  bool _isCompagnon = false;
  bool _isHero = true;

  Caract? get caract => _caract;
  int? get number => _number;
  int? get grimoire => _grimoire;
  bool get attaque => _attaque;
  bool get critique => _critique;
  bool get startFight => _startFight;
  bool get firstTour => _firstTour;
  bool get debutTour => _debutTour;
  bool get finTour => _finTour;
  bool get isCompagnon => _isCompagnon;
  bool get isHero => _isHero;

  WavenCaract({
    caract,
    number,
    grimoire,
    attaque,
    critique,
    startFight,
    firstTour,
    debutTour,
    finTour,
    isCompagnon,
    isHero,
  }) {
    _caract = caract;
    _number = number;
    _grimoire = grimoire;
    _attaque = attaque;
    _critique = critique;
    _startFight = startFight;
    _firstTour = firstTour;
    _debutTour = debutTour;
    _finTour = finTour;
    _isCompagnon = isCompagnon;
    _isHero = isHero;
  }

  WavenCaract.fromJson(Map<String, dynamic> json)
      : _caract = WavenCaract.getCaractByJson(json['caract']),
        _number = json['number'],
        _grimoire = json['grimoire'],
        _attaque = json['attaque'] == true,
        _critique = json['critique'] == true,
        _startFight = json['startFight'] == true,
        _firstTour = json['firstTour'] == true,
        _debutTour = json['debutTour'] == true,
        _finTour = json['finTour'] == true,
        _isCompagnon = json['isCompagnon'] == true,
        _isHero = json['isHero'] == true;

  Map<String, dynamic> toJson() => {
        'caract': caract,
        'number': number,
        'grimoire': grimoire,
        'attaque': attaque,
        'critique': critique,
        'startFight': startFight,
        'firstTour': firstTour,
        'debutTour': debutTour,
        'finTour': finTour,
        'isCompagnon': isCompagnon,
        'isHero': isHero,
      };

  static List<CaractType> getSortedTypes() {
    List<CaractType> caractTypes = [];
    CaractType.values.forEach((element) => caractTypes.add(element));
    caractTypes
        .sort((a, b) => getStringOfType(a).compareTo(getStringOfType(b)));
    return caractTypes;
  }

  static Caract getCaractByJson(caract) {
    switch (caract) {
      case "pvHero":
        return Caract.pvHero;
      case "atHero":
        return Caract.atHero;
      case "atAdj":
        return Caract.atAdj;
      case "addATUntilEnd":
        return Caract.addATUntilEnd;
      case "arHero":
        return Caract.arHero;
      case "doubleARHero":
        return Caract.doubleARHero;
      case "arHeroAndCompagnonOnTP":
        return Caract.arHeroAndCompagnonOnTP;
      case "defenseHero":
        return Caract.defenseHero;
      case "esquiveHero":
        return Caract.esquiveHero;
      case "riposteHero":
        return Caract.riposteHero;
      case "drainHero":
        return Caract.drainHero;
      case "addDrainHero":
        return Caract.addDrainHero;
      case "xpHero":
        return Caract.xpHero;
      case "ccHero":
        return Caract.ccHero;
      case "ccMagic":
        return Caract.ccMagic;
      case "degatCCHero":
        return Caract.degatCCHero;
      case "degatCCMagic":
        return Caract.degatCCMagic;
      case "dropKama":
        return Caract.dropKama;
      case "dropBrassard":
        return Caract.dropBrassard;
      case "dropSort":
        return Caract.dropSort;
      case "dropAll":
        return Caract.dropAll;
      case "aura":
        return Caract.aura;
      case "heal":
        return Caract.heal;
      case "healAT":
        return Caract.healAT;
      case "shield":
        return Caract.shield;
      case "shieldAll":
        return Caract.shieldAll;
      case "collision":
        return Caract.collision;
      case "collisionPA":
        return Caract.collisionPA;
      case "collisionAddPA":
        return Caract.collisionAddPA;
      case "pvCompagnon":
        return Caract.pvCompagnon;
      case "atCompagnon":
        return Caract.atCompagnon;
      case "drainCompagnon":
        return Caract.drainCompagnon;
      case "addDrainCompagnon":
        return Caract.addDrainCompagnon;
      case "ccCompagnon":
        return Caract.ccCompagnon;
      case "degatCCCompagnon":
        return Caract.degatCCCompagnon;
      case "canFirstSummonTwice":
        return Caract.canFirstSummonTwice;
      case "attackRebondCompagnon":
        return Caract.attackRebondCompagnon;
      case "attackGreleCompagnon":
        return Caract.attackGreleCompagnon;
      case "attackTourbeCompagnon":
        return Caract.attackTourbeCompagnon;
      case "attackExploCompagnon":
        return Caract.attackExploCompagnon;
      case "summonfirstInciblable":
        return Caract.summonfirstInciblable;
      case "summonfirstp50PvToAR":
        return Caract.summonfirstp50PvToAR;
      case "summonDephasage":
        return Caract.summonDephasage;
      case "summonATHeroToAR":
        return Caract.summonATHeroToAR;
      case "summonShieldHero":
        return Caract.summonShieldHero;
      case "summonShieldCompagnon":
        return Caract.summonShieldCompagnon;
      case "summon25ATHero":
        return Caract.summon25ATHero;
      case "summon25AT":
        return Caract.summon25AT;
      case "summon50AT":
        return Caract.summon50AT;
      case "summonAdd15AT":
        return Caract.summonAdd15AT;
      case "summonPA":
        return Caract.summonPA;
      case "deathATCompagnonToARHero":
        return Caract.deathATCompagnonToARHero;
      case "deathCompagnonEther":
        return Caract.deathCompagnonEther;
      case "deathCompagnonPA":
        return Caract.deathCompagnonPA;
      case "deathCompagnonAddPA":
        return Caract.deathCompagnonAddPA;
      case "deathCompagnonAddCard":
        return Caract.deathCompagnonAddCard;
      case "deathCompagnonReduceCard":
        return Caract.deathCompagnonReduceCard;
      case "deathCompagnon5PVHero":
        return Caract.deathCompagnon5PVHero;
      case "deathDoubleATCompagnonToARHero":
        return Caract.deathDoubleATCompagnonToARHero;
      case "magicAll":
        return Caract.magicAll;
      case "magicEau":
        return Caract.magicEau;
      case "mouille":
        return Caract.mouille;
      case "mouilleAutour":
        return Caract.mouilleAutour;
      case "ftMouille":
        return Caract.ftMouille;
      case "addMouille":
        return Caract.addMouille;
      case "grele":
        return Caract.grele;
      case "grele2Times":
        return Caract.grele2Times;
      case "magicGrele":
        return Caract.magicGrele;
      case "p20cardEau":
        return Caract.p20cardEau;
      case "p5cardEau":
        return Caract.p5cardEau;
      case "p15cardEau":
        return Caract.p15cardEau;
      case "ftFlot":
        return Caract.ftFlot;
      case "killEau":
        return Caract.killEau;
      case "add5KillEau":
        return Caract.add5KillEau;
      case "magicAir":
        return Caract.magicAir;
      case "evente":
        return Caract.evente;
      case "eventeAutour":
        return Caract.eventeAutour;
      case "ftEvente":
        return Caract.ftEvente;
      case "addEvent":
        return Caract.addEvent;
      case "p20cardAir":
        return Caract.p20cardAir;
      case "p5cardAir":
        return Caract.p5cardAir;
      case "p15cardAir":
        return Caract.p15cardAir;
      case "ftCaracole":
        return Caract.ftCaracole;
      case "killAir":
        return Caract.killAir;
      case "add5KillAir":
        return Caract.add5KillAir;
      case "rebond":
        return Caract.rebond;
      case "rebond2Times":
        return Caract.rebond2Times;
      case "magicRebond":
        return Caract.magicRebond;
      case "magicTerre":
        return Caract.magicTerre;
      case "boueux":
        return Caract.boueux;
      case "boueuxAutour":
        return Caract.boueuxAutour;
      case "ftBoueux":
        return Caract.ftBoueux;
      case "addBoueux":
        return Caract.addBoueux;
      case "p20cardTerre":
        return Caract.p20cardTerre;
      case "p5cardTerre":
        return Caract.p5cardTerre;
      case "p15cardTerre":
        return Caract.p15cardTerre;
      case "ftBroyage":
        return Caract.ftBroyage;
      case "killTerre":
        return Caract.killTerre;
      case "add5KillTerre":
        return Caract.add5KillTerre;
      case "tourbe":
        return Caract.tourbe;
      case "tourbe2Times":
        return Caract.tourbe2Times;
      case "magicTourbe":
        return Caract.magicTourbe;
      case "magicFeu":
        return Caract.magicFeu;
      case "huile":
        return Caract.huile;
      case "huileAutour":
        return Caract.huileAutour;
      case "ftHuile":
        return Caract.ftHuile;
      case "addHuile":
        return Caract.addHuile;
      case "p20cardFeu":
        return Caract.p20cardFeu;
      case "p5cardFeu":
        return Caract.p5cardFeu;
      case "p15cardFeu":
        return Caract.p15cardFeu;
      case "ftBoom":
        return Caract.ftBoom;
      case "killFeu":
        return Caract.killFeu;
      case "add5KillFeu":
        return Caract.add5KillFeu;
      case "explo":
        return Caract.explo;
      case "explo2Times":
        return Caract.explo2Times;
      case "magicExplo":
        return Caract.magicExplo;
      case "g1510ATHero":
        return Caract.g1510ATHero;
      case "g15ft1Ether":
        return Caract.g15ft1Ether;
      case "g15ft1addEther":
        return Caract.g15ft1addEther;
      case "ftPA":
        return Caract.ftPA;
      case "ftAddPa":
        return Caract.ftAddPa;
      case "ftAdd2Cards":
        return Caract.ftAdd2Cards;
      case "add1card":
        return Caract.add1card;
      case "astral":
        return Caract.astral;
      case "ftAstral":
        return Caract.ftAstral;
      case "cibleAstral":
        return Caract.cibleAstral;
      case "addAstral":
        return Caract.addAstral;
      case "g15ftReduceCards":
        return Caract.g15ftReduceCards;
      case "ft5pvHeroToAR":
        return Caract.ft5pvHeroToAR;
      case "g12ft2PA":
        return Caract.g12ft2PA;
      case "g12ftAdd2PA":
        return Caract.g12ftAdd2PA;
      case "g12ft1aura":
        return Caract.g12ft1aura;
      case "ftAddCean":
        return Caract.ftAddCean;
      case "ftAddCtane":
        return Caract.ftAddCtane;
      case "ftAddCypress":
        return Caract.ftAddCypress;
      case "ftAddRagan":
        return Caract.ftAddRagan;
      case "ftp10MagicTerreBoueux":
        return Caract.ftp10MagicTerreBoueux;
      case "ftp10MagicFeuHuile":
        return Caract.ftp10MagicFeuHuile;
      case "ftp10MagicEauMouille":
        return Caract.ftp10MagicEauMouille;
      case "ftp10MagicAirEvent":
        return Caract.ftp10MagicAirEvent;
      case "nextTShieldTo25AT":
        return Caract.nextTShieldTo25AT;
      case "nextTShieldAdd25AT":
        return Caract.nextTShieldAdd25AT;
      case "ouragan":
        return Caract.ouragan;
      case "ouraganAdd":
        return Caract.ouraganAdd;
      case "p50Ouragan":
        return Caract.p50Ouragan;
      case "eboulement":
        return Caract.eboulement;
      case "eboulementAdd":
        return Caract.eboulementAdd;
      case "p50Eboulement":
        return Caract.p50Eboulement;
      case "meteore":
        return Caract.meteore;
      case "meteoreAdd":
        return Caract.meteoreAdd;
      case "p50Meteore":
        return Caract.p50Meteore;
      case "foudre":
        return Caract.foudre;
      case "foudreAdd":
        return Caract.foudreAdd;
      case "p50Foudre":
        return Caract.p50Foudre;
      case "avalanche":
        return Caract.avalanche;
      case "avalancheAdd":
        return Caract.avalancheAdd;
      case "p50Avalanche":
        return Caract.p50Avalanche;
      case "geyser":
        return Caract.geyser;
      case "geyserAdd":
        return Caract.geyserAdd;
      case "p50Geyser":
        return Caract.p50Geyser;
      case "repousse2":
        return Caract.repousse2;
      case "repousse2Adj":
        return Caract.repousse2Adj;
      case "repousse2Add":
        return Caract.repousse2Add;
      case "reduceLastCard":
        return Caract.reduceLastCard;
      case "reduce2NextCards":
        return Caract.reduce2NextCards;
      case "reduce2FirstCards":
        return Caract.reduce2FirstCards;
      case "atBehind":
        return Caract.atBehind;
      case "goback2":
        return Caract.goback2;
      case "tpBehind":
        return Caract.tpBehind;
      case "tpBehindHero":
        return Caract.tpBehindHero;
      case "tpCompagnon":
        return Caract.tpCompagnon;
      case "replay":
        return Caract.replay;
      default:
        return Caract.pvHero;
    }
  }

  static String getDescritionByCaract(Caract? caract, {String number = '1'}) {
    switch (caract) {
      case Caract.pvHero:
        return '+$number% de PV à votre héros';
      case Caract.atHero:
        return '+$number% d\'AT à votre héros';
      case Caract.atAdj:
        return 'Inflige $number% de l\'AT de votre héros aux adversaires adjacents';
      case Caract.addATUntilEnd:
        return '+$number% d\'AT à votre héros jusqu\'à la find du combat';
      case Caract.arHero:
        return '+$number AR à votre héros';
      case Caract.doubleARHero:
        return 'Double le Gain d\'AR de votre héros';
      case Caract.arHeroAndCompagnonOnTP:
        return 'Votre héros et le compagnon gagnent autant d\'AR que de dégats infligés';
      case Caract.defenseHero:
        return "+$number% à toutes vos DEFENSES";
      case Caract.esquiveHero:
        return "+$number% d'ESQUIVE à votre héros";
      case Caract.riposteHero:
        return "+$number% de RIPOSTE à votre héros";
      case Caract.drainHero:
        return "+$number% de DRAIN à votre héros";
      case Caract.addDrainHero:
        return "+$number% de DRAIN supplémentaire à votre héros";
      case Caract.xpHero:
        return '+$number% d\'XP à votre héros';
      case Caract.ccHero:
        return '+$number% de CC à votre héros';
      case Caract.ccMagic:
        return '+$number% de CC MAGIQUES';
      case Caract.degatCCHero:
        return "+$number% de DEGATS CC à votre héros";
      case Caract.degatCCMagic:
        return "+$number% de DEGATS CC MAGIQUES";
      case Caract.dropKama:
        return '+$number% aux GAINS DE KAMAS';
      case Caract.dropBrassard:
        return "+$number% Loot Brassards";
      case Caract.dropSort:
        return "+$number% Loot Sorts";
      case Caract.dropAll:
        return "+$number% Gains Loot";
      case Caract.aura:
        return '+$number% à toutes vos AURAS';
      case Caract.heal:
        return "+$number% à vos SOINS";
      case Caract.healAT:
        return "Soigne votre héros de son AT";
      case Caract.shield:
        return "Confère BOUCLIER à votre héros";
      case Caract.shieldAll:
        return "Confère BOUCLIER à tous vos personnages";
      case Caract.collision:
        return "+$number% à toutes vos COLLISIONS";
      case Caract.collisionPA:
        return "COLLISION = +1PA en réserve (limité à 1 par tour)";
      case Caract.collisionAddPA:
        return "COLLISION : La limitation augmente à 2 fois par tour";
      case Caract.pvCompagnon:
        return "+$number% de PV à vos compagnons";
      case Caract.atCompagnon:
        return "+$number% d'\AT à vos compagnons";
      case Caract.drainCompagnon:
        return "+$number% de DRAIN à vos compagnons";
      case Caract.addDrainCompagnon:
        return "+$number% de DRAIN supplémentaire à vos compagnons";
      case Caract.ccCompagnon:
        return '+$number% de CC à vos compagnons';
      case Caract.degatCCCompagnon:
        return "+$number% de DEGATS CC à vos compagnons";
      case Caract.canFirstSummonTwice:
        return "Votre premier compagnon invoqué est REINVOCABLE";
      case Caract.attackRebondCompagnon:
        return "Quand un de vos compagnons attaque : il déclenche REBOND";
      case Caract.attackGreleCompagnon:
        return "Quand un de vos compagnons attaque : il déclenche GRELE";
      case Caract.attackTourbeCompagnon:
        return "Quand un de vos compagnons attaque : Il déclenche TOURBE";
      case Caract.attackExploCompagnon:
        return "Quand un de vos compagnons attaque : Il déclenche EXPLOSION";
      case Caract.summonfirstInciblable:
        return "Confere INCIBLABLE au premier compagnon que vous invoquez";
      case Caract.summonfirstp50PvToAR:
        return "Le premier compagnon que vous invoquez gagne 50% de ses PV MAX en AR";
      case Caract.summonDephasage:
        return "Quand vous invoquez un compagnon : Lui confère DEPHASAGE pour le tour";
      case Caract.summonATHeroToAR:
        return "Quand vous invoquez un compagnon : Lui confère l'AT de votre héros en AR";
      case Caract.summonShieldHero:
        return "Quand vous invoquez un compagnon : Confère BOUCLIER à votre héros";
      case Caract.summonShieldCompagnon:
        return "Quand vous invoquez un compagnon : lui confere BOUCLIER";
      case Caract.summon25ATHero:
        return "Tant que vous avez au moins un compagnon en jeu : +25% d'AT à votre héros";
      case Caract.summon25AT:
        return "Quand vous invoquez un compagnon : +25% à son AT pour le combat";
      case Caract.summon50AT:
        return "Quand vous invoquez un compagnon : +50% à son AT pour le tour";
      case Caract.summonAdd15AT:
        return "+15% d'AT supplémentaire à votre compagnon";
      case Caract.summonPA:
        return "Quand vous invoquez un compagnon : +1PA en réserve";
      case Caract.deathATCompagnonToARHero:
        return "Quand un de vos compagnons meurt : Confère son AT en AR à votre héros";
      case Caract.deathCompagnonEther:
        return "Quand un de vos compagnons meurt : +1 Jauge ETHER";
      case Caract.deathCompagnonPA:
        return "Quand un de vos compagnons meurt : +1PA en réserve";
      case Caract.deathCompagnonAddPA:
        return "Quand un de vos compagnons meurt : +1 PA supplémentaire en réserve";
      case Caract.deathCompagnonAddCard:
        return "Quand un de vos compagnons meurt : Piochez 1 sort";
      case Caract.deathCompagnonReduceCard:
        return "Quand un de vos compagnons meurt : -1PA au coût du sort pioché";
      case Caract.deathCompagnon5PVHero:
        return "Quand un de vos compagnons meurt : Votre héros se soigne de 5% de ses PV MAX";
      case Caract.deathDoubleATCompagnonToARHero:
        return "Quand un de vos compagnons meurt : Le gain d'AR de votre héros est doublé";
      case Caract.magicAll:
        return "+$number% à toutes vos MAGIES";
      case Caract.magicEau:
        return '+$number% MAGIE Eau';
      case Caract.mouille:
        return "Applique MOUILLE";
      case Caract.mouilleAutour:
        return "Applique MOUILLE aux adversaires autour de votre héros";
      case Caract.ftMouille:
        return "Applique MOUILLE à 2 adversaires aléatoires";
      case Caract.addMouille:
        return "Applique MOUILLE à un adversaire supplémentaire";
      case Caract.grele:
        return "Déclenche GRELE";
      case Caract.grele2Times:
        return "Déclenche GRELE une seconde fois";
      case Caract.magicGrele:
        return "+$number% à toutes vos GRELES";
      case Caract.p20cardEau:
        return "Quand vous jouez un sort EAU : +20% de chance de réduire de 1PA le cout des sorts de votre main";
      case Caract.p5cardEau:
        return "+5% de chance de réduire de 1 PA le coût des sorts de main";
      case Caract.p15cardEau:
        return "Quand vous jouez un sort EAU : + 15% de chance de générer une VAGUE infligeant 20 dégats magiques sur un adversaire aléatoire";
      case Caract.ftFlot:
        return "Ajoute le sort FLOT à votre main";
      case Caract.killEau:
        return "Coup de grâce avec un sort EAU : Une vage s'abat sur les adversaires. Elle inflige 20 dégâts magiques";
      case Caract.add5KillEau:
        return "+5 dégats magiques à la VAGUE";
      case Caract.magicAir:
        return '+$number% MAGIE Air';
      case Caract.evente:
        return "Applique EVENTE";
      case Caract.eventeAutour:
        return "Applique EVENTE aux adversaires autour de votre héros";
      case Caract.ftEvente:
        return "Applique EVENTE à 2 adversaires aléatoires";
      case Caract.addEvent:
        return "Applique EVENTE à un adversaire supplémentaire";
      case Caract.p20cardAir:
        return "Quand vous jouez un sort AIR : +20% de chance de piocher 1 sort. Il coûte -2PA";
      case Caract.p5cardAir:
        return "+5% de chance de piocher 1 sort coutant -2PA";
      case Caract.p15cardAir:
        return "Quand vous jouez un sort AIR : + 15% de chance de générer un ECLAIR infligeant 20 dégats magiques sur un adversaire aléatoire";
      case Caract.ftCaracole:
        return "Ajoute le sort CARACOLE à votre main";
      case Caract.killAir:
        return "COUP DE GRACE avec un sort AIR : un ECLAIR s'abat sur les adversaires. il inflige 20 dégâts magiques.";
      case Caract.add5KillAir:
        return "+5 dégats magiques à la FOUDRE";
      case Caract.rebond:
        return "Déclenche REBOND";
      case Caract.rebond2Times:
        return "Déclenche REBOND une seconde fois";
      case Caract.magicRebond:
        return "+$number% à vos REBONDS";
      case Caract.magicTerre:
        return '+$number% MAGIE Terre';
      case Caract.boueux:
        return "Applique BOUEUX";
      case Caract.boueuxAutour:
        return "Applique BOUEUX aux adversaires autour de votre héros";
      case Caract.ftBoueux:
        return "Applique BOUEUX à 2 adversaires aléatoires";
      case Caract.addBoueux:
        return "Applique BOUEUX à un adversaire supplémentaire";
      case Caract.p20cardTerre:
        return "Quand vous jouez un sort TERRE : +20% de chance de piocher 2 sorts";
      case Caract.p5cardTerre:
        return "+5% de chance de piocher 2 sorts";
      case Caract.p15cardTerre:
        return "Quand vous jouez un sort TERRE : + 15% de chance de générer un ROCHER infligeant 20 dégats magiques sur un adversaire aléatoire";
      case Caract.ftBroyage:
        return "Ajoute le sort BROYAGE à votre main";
      case Caract.killTerre:
        return "COUP DE GRACE avec un sort TERRE: Un ROCHER s'abat sur les adversaires. Elle inflige 20 dégâts magiques";
      case Caract.add5KillTerre:
        return "+5 dégats magiques au ROCHER";
      case Caract.tourbe:
        return "Déclenche TOURBE";
      case Caract.tourbe2Times:
        return "Déclenche TOURBE une seconde fois";
      case Caract.magicTourbe:
        return "+$number% à vos TOURBES";
      case Caract.magicFeu:
        return '+$number% MAGIE Feu';
      case Caract.huile:
        return "Applique HUILE";
      case Caract.huileAutour:
        return "Applique HUILE aux adversaires autour de votre héros";
      case Caract.ftHuile:
        return "Applique HUILE à 2 adversaires aléatoires";
      case Caract.addHuile:
        return "Applique HUILE à un adversaire supplémentaire";
      case Caract.p20cardFeu:
        return "Quand vous jouez un sort FEU : +20% de chance de piocher de réduire de 3 PA le coût du premier sort de votre main";
      case Caract.p5cardFeu:
        return "+5% de chance de réduire de 3 PA le coût du premier sort de votre main";
      case Caract.p15cardFeu:
        return "Quand vous jouez un sort FEU : + 15% de chance de générer une BOULE DE FEU infligeant 20 dégats magiques sur un adversaire aléatoire";
      case Caract.ftBoom:
        return "Ajoute le sort BOOM à votre main";
      case Caract.killFeu:
        return "COUP DE GRACE avec un sort FEU: Une BOULE DE FEU s'abat sur les adversaires. Elle inflige 20 dégâts magiques";
      case Caract.add5KillFeu:
        return "+5 dégats magiques à la BOULE DE FEU";
      case Caract.explo:
        return "Déclenche EXPLOSION";
      case Caract.explo2Times:
        return "Déclenche EXPLOSION une seconde fois";
      case Caract.magicExplo:
        return "+$number% à vos EXPLOSIONS";
      case Caract.g1510ATHero:
        return "+10% d'AT supplémentaire à votre héros";
      case Caract.g15ft1Ether:
        return "+1 Jauge ETHER";
      case Caract.g15ft1addEther:
        return "+1 Jauge ETHER supplémentaire";
      case Caract.ftPA:
        return "+1 PA de réserve";
      case Caract.ftAddPa:
        return "+1PA supplémentaire en réserve";
      case Caract.ftAdd2Cards:
        return "Piochez 2 sorts";
      case Caract.add1card:
        return "Piochez 1 sort supplémentaire";
      case Caract.astral:
        return "Applique ASTRAL";
      case Caract.ftAstral:
        return "Applique ASTRAL à 1 adversaire aléatoire";
      case Caract.cibleAstral:
        return "Applique ASTRAL à la cible";
      case Caract.addAstral:
        return "Applique ASTRAL à un adversaire supplémentaire";
      case Caract.g15ftReduceCards:
        return "-1PA au coûts des sorts de votre main";
      case Caract.ft5pvHeroToAR:
        return "+5% des PV MAX de votre héros en AR";
      case Caract.g12ft2PA:
        return "+2PA en réserve";
      case Caract.g12ftAdd2PA:
        return "+2PA supplémentaires en réserve";
      case Caract.g12ft1aura:
        return "+1 AURA à votre héros s'il en possède déjà";
      case Caract.ftAddCean:
        return "Ajoute le sort CEAN à votre main";
      case Caract.ftAddCtane:
        return "Ajoute le sort CTANE à votre main";
      case Caract.ftAddCypress:
        return "Ajoute le sort CYPRES à votre main";
      case Caract.ftAddRagan:
        return "Ajoute le sort RAGAN à votre main";
      case Caract.ftp10MagicTerreBoueux:
        return "+10% de MAGIE TERRE à votre héros pour le tour par adversaires BOUEUX";
      case Caract.ftp10MagicFeuHuile:
        return "+10% de MAGIE FEU à votre héros pour le tour par adversaires HUILE";
      case Caract.ftp10MagicEauMouille:
        return "+10% de MAGIE EAU à votre héros pour le tour par adversaire Mouillé.";
      case Caract.ftp10MagicAirEvent:
        return "+10% de MAGIE AIR à votre héros pour le tour par adversaires EVENTE";
      case Caract.nextTShieldTo25AT:
        return "Vos personnages avec BOUCLIER infligent 25% de leur AT aux adversaires adjacents";
      case Caract.nextTShieldAdd25AT:
        return "Vos personnages avec BOUCLIER infligent +25% aux adversaires adjacents.";
      case Caract.ouragan:
        return "OURAGAN : Inflige des degats magiques autour de votre héros";
      case Caract.ouraganAdd:
        return "Si 3 adversaires touchés : +1 Jaude ETHER";
      case Caract.p50Ouragan:
        return "+50% à tous vos ouragans";
      case Caract.eboulement:
        return "EBOULEMENT : Inflige des dégats magiques autour de votre héros";
      case Caract.eboulementAdd:
        return "Si 3 adversaires touchés : +18 AR à votre héros";
      case Caract.p50Eboulement:
        return "+50% à tous vos EBOULEMENT";
      case Caract.meteore:
        return "METEORE : Inflige des dégâts magiques autour de votre héros";
      case Caract.meteoreAdd:
        return "Si 3 adversaires touchés : +50% aux dégâts de votre prochain sort";
      case Caract.p50Meteore:
        return "+50% à toutes vos METEORES";
      case Caract.foudre:
        return "FOUDRE : Inflige des dégats magiques autour de votre héros";
      case Caract.foudreAdd:
        return "Si 3 adversaires touchés : Inflige 30% de l'AT de votre héros à tous les adversaires";
      case Caract.p50Foudre:
        return "+50% à toutes vos FOUDRES";
      case Caract.avalanche:
        return "AVALANCHE : Inflige des dégats magiques autour de votre héros";
      case Caract.avalancheAdd:
        return "Si 3 ennemis touchés : Piochez 1 sort. Il coûte -1PA";
      case Caract.p50Avalanche:
        return "+50% à toutes vos AVALANCHES";
      case Caract.geyser:
        return "GEYSER : Inflige des dégats magiques autour de votre héros";
      case Caract.geyserAdd:
        return "Si 3 adversaires touchés : VOL DE VIE";
      case Caract.p50Geyser:
        return "+50% à tous vos GEYSERS";
      case Caract.repousse2:
        return "REPOUSSE de 2 cases";
      case Caract.repousse2Adj:
        return "REPOUSSE de 2 cases les adversaires adjacents à votre héros";
      case Caract.repousse2Add:
        return "REPOUSSE de 2 cases supplémentaires";
      case Caract.atBehind:
        return "Inflige $number% de l'AT de votre héros derrière la cible";
      case Caract.goback2:
        return "Votre héros recule de 2 cases";
      case Caract.tpBehind:
        return "Votre héros se téléporte dans le dos de la cible";
      case Caract.tpBehindHero:
        return "La cible se téléporte dans le dos de votre héros";
      case Caract.tpCompagnon:
        return "Echange la position de votre héros avec celle du compagnon allié le plus proche";
      case Caract.reduceLastCard:
        return "-1PA au coût du prochain sort joué ce tour";
      case Caract.reduce2NextCards:
        return "-1PA supplémentaire au coût du prochain sort joué ce tour";
      case Caract.reduce2FirstCards:
        return "-1PA au coût des 2 premiers sorts de votre main";
      case Caract.replay:
        return "Votre héros rejoue son tour";
      default:
        return "";
    }
  }

  static CaractType? getTypeOfCaract(Caract? caract) {
    switch (caract) {
      case Caract.pvHero:
      case Caract.pvCompagnon:
      case Caract.deathCompagnon5PVHero:
        return CaractType.pv;
      case Caract.atHero:
      case Caract.atAdj:
      case Caract.addATUntilEnd:
      case Caract.atCompagnon:
      case Caract.summon25ATHero:
      case Caract.summon25AT:
      case Caract.summon50AT:
      case Caract.summonAdd15AT:
      case Caract.g1510ATHero:
      case Caract.ft5pvHeroToAR:
      case Caract.nextTShieldTo25AT:
      case Caract.nextTShieldAdd25AT:
      case Caract.atBehind:
        return CaractType.at;
      case Caract.defenseHero:
        return CaractType.defense;
      case Caract.esquiveHero:
        return CaractType.esquive;
      case Caract.riposteHero:
        return CaractType.riposte;
      case Caract.drainHero:
      case Caract.addDrainHero:
      case Caract.drainCompagnon:
      case Caract.addDrainCompagnon:
        return CaractType.drain;
      case Caract.xpHero:
        return CaractType.xp;
      case Caract.ccMagic:
      case Caract.ccHero:
      case Caract.ccCompagnon:
        return CaractType.cc;
      case Caract.degatCCHero:
      case Caract.degatCCMagic:
      case Caract.degatCCCompagnon:
        return CaractType.degatsCC;
      case Caract.dropKama:
      case Caract.dropBrassard:
      case Caract.dropSort:
      case Caract.dropAll:
        return CaractType.drop;
      case Caract.aura:
      case Caract.g12ft1aura:
        return CaractType.aura;
      case Caract.heal:
      case Caract.healAT:
        return CaractType.soin;
      case Caract.collision:
      case Caract.collisionPA:
      case Caract.collisionAddPA:
      case Caract.repousse2:
      case Caract.repousse2Adj:
      case Caract.repousse2Add:
        return CaractType.collision;
      case Caract.rebond:
      case Caract.rebond2Times:
      case Caract.attackRebondCompagnon:
      case Caract.magicRebond:
        return CaractType.rebond;
      case Caract.attackGreleCompagnon:
      case Caract.grele:
      case Caract.grele2Times:
      case Caract.magicGrele:
        return CaractType.grele;
      case Caract.tourbe:
      case Caract.tourbe2Times:
      case Caract.attackTourbeCompagnon:
      case Caract.magicTourbe:
        return CaractType.tourbe;
      case Caract.explo:
      case Caract.explo2Times:
      case Caract.attackExploCompagnon:
      case Caract.magicExplo:
        return CaractType.explo;
      case Caract.arHero:
      case Caract.doubleARHero:
      case Caract.summonfirstp50PvToAR:
      case Caract.summonATHeroToAR:
      case Caract.deathATCompagnonToARHero:
      case Caract.deathDoubleATCompagnonToARHero:
        return CaractType.ar;
      case Caract.summonDephasage:
        return CaractType.dephasage;
      case Caract.summonShieldHero:
      case Caract.shield:
      case Caract.shieldAll:
      case Caract.summonShieldCompagnon:
        return CaractType.bouclier;
      case Caract.summonPA:
      case Caract.deathCompagnonPA:
      case Caract.deathCompagnonAddPA:
      case Caract.ftPA:
      case Caract.ftAddPa:
      case Caract.g12ft2PA:
      case Caract.g12ftAdd2PA:
        return CaractType.paReserve;
      case Caract.deathCompagnonEther:
      case Caract.g15ft1Ether:
      case Caract.g15ft1addEther:
        return CaractType.jauge;
      case Caract.deathCompagnonAddCard:
      case Caract.ftAdd2Cards:
      case Caract.add1card:
        return CaractType.draw;
      case Caract.deathCompagnonReduceCard:
      case Caract.g15ftReduceCards:
      case Caract.reduceLastCard:
      case Caract.reduce2NextCards:
      case Caract.reduce2FirstCards:
        return CaractType.reductCost;
      case Caract.magicAll:
        return CaractType.allMagic;
      case Caract.magicEau:
      case Caract.ftp10MagicEauMouille:
        return CaractType.magicEau;
      case Caract.mouille:
      case Caract.ftMouille:
      case Caract.addMouille:
        return CaractType.mouille;
      case Caract.p20cardEau:
      case Caract.p5cardEau:
      case Caract.p15cardEau:
        return CaractType.cardEau;
      case Caract.killEau:
      case Caract.add5KillEau:
      case Caract.killAir:
      case Caract.add5KillAir:
      case Caract.killTerre:
      case Caract.add5KillTerre:
      case Caract.killFeu:
      case Caract.add5KillFeu:
        return CaractType.kill;
      case Caract.ftFlot:
      case Caract.ftCaracole:
      case Caract.ftBroyage:
      case Caract.ftBoom:
      case Caract.ftAddCean:
      case Caract.ftAddCtane:
      case Caract.ftAddCypress:
      case Caract.ftAddRagan:
        return CaractType.addCard;
      case Caract.magicAir:
      case Caract.ftp10MagicAirEvent:
        return CaractType.magicAir;
      case Caract.evente:
      case Caract.ftEvente:
      case Caract.addEvent:
        return CaractType.evente;
      case Caract.p20cardAir:
      case Caract.p5cardAir:
      case Caract.p15cardAir:
        return CaractType.cardAir;
      case Caract.magicTerre:
      case Caract.ftp10MagicTerreBoueux:
        return CaractType.magicTerre;
      case Caract.boueux:
      case Caract.ftBoueux:
      case Caract.addBoueux:
        return CaractType.boueux;
      case Caract.p20cardTerre:
      case Caract.p5cardTerre:
      case Caract.p15cardTerre:
        return CaractType.cardTerre;
      case Caract.magicFeu:
      case Caract.ftp10MagicFeuHuile:
        return CaractType.magicFeu;
      case Caract.huile:
      case Caract.ftHuile:
      case Caract.addHuile:
        return CaractType.huile;
      case Caract.p20cardFeu:
      case Caract.p5cardFeu:
      case Caract.p15cardFeu:
        return CaractType.cardFeu;
      case Caract.astral:
      case Caract.ftAstral:
      case Caract.cibleAstral:
      case Caract.addAstral:
        return CaractType.astral;
      case Caract.ouragan:
      case Caract.p50Ouragan:
      case Caract.p50Eboulement:
      case Caract.eboulement:
      case Caract.meteore:
      case Caract.p50Meteore:
      case Caract.foudre:
      case Caract.p50Foudre:
      case Caract.avalanche:
      case Caract.p50Avalanche:
      case Caract.geyser:
      case Caract.p50Geyser:
        return CaractType.affinite;
      case Caract.goback2:
      case Caract.tpBehind:
      case Caract.tpBehindHero:
      case Caract.tpCompagnon:
        return CaractType.mouvement;
      default:
        return null;
    }
  }

  static String getStringOfType(CaractType? type) {
    switch (type) {
      case CaractType.pv:
        return "PV";
      case CaractType.at:
        return "AT";
      case CaractType.defense:
        return "Défense";
      case CaractType.esquive:
        return "Esquive";
      case CaractType.riposte:
        return "Riposte";
      case CaractType.drain:
        return "Drain";
      case CaractType.xp:
        return "XP Héro";
      case CaractType.cc:
        return "CC Héro";
      case CaractType.degatsCC:
        return "Dégats CC Héro";
      case CaractType.drop:
        return "Drop";
      case CaractType.aura:
        return "Aura";
      case CaractType.soin:
        return "Soin";
      case CaractType.collision:
        return "Collision";
      case CaractType.rebond:
        return "Rebond";
      case CaractType.grele:
        return "Grêle";
      case CaractType.tourbe:
        return "Tourbe";
      case CaractType.explo:
        return "Explo";
      case CaractType.ar:
        return "AR";
      case CaractType.dephasage:
        return "Déphasage";
      case CaractType.bouclier:
        return "Bouclier";
      case CaractType.paReserve:
        return "PA Réserve";
      case CaractType.jauge:
        return "Jauge";
      case CaractType.draw:
        return "Pioche";
      case CaractType.reductCost:
        return "Réduction de coût";
      case CaractType.allMagic:
        return "Toutes les Magies";
      case CaractType.magicEau:
        return "Magie Eau";
      case CaractType.mouille:
        return "Mouille";
      case CaractType.cardEau:
        return "Sorts Eau";
      case CaractType.kill:
        return "Kill";
      case CaractType.addCard:
        return "Ajout de cartes";
      case CaractType.magicAir:
        return "Magie Air";
      case CaractType.evente:
        return "Eventé";
      case CaractType.cardAir:
        return "Sorts Air";
      case CaractType.magicTerre:
        return "Magie Terre";
      case CaractType.boueux:
        return "Boueux";
      case CaractType.cardTerre:
        return "Sorts Terre";
      case CaractType.magicFeu:
        return "Magie feu";
      case CaractType.huile:
        return "Huilé";
      case CaractType.cardFeu:
        return "Sorts Feu";
      case CaractType.astral:
        return "Astral";
      case CaractType.affinite:
        return "Affinité";
      case CaractType.mouvement:
        return "Mouvement";
      default:
        return "";
    }
  }

  static String getDescrition(WavenCaract? caract) {
    if (caract == null) return "";
    var text = '';
    if (caract.grimoire != null) {
      text += "GRIMOIRE (${caract.grimoire}) : ";
    }
    if (caract.startFight) {
      text += "DEBUT DU COMBAT : ";
    }
    if (caract.firstTour) {
      text += "PREMIER TOUR : ";
    }
    if (caract.debutTour) {
      text += "DEBUT DU TOUR : ";
    }
    if (caract.finTour) {
      text += "FIN DU TOUR : ";
    }
    if (caract.attaque) {
      text += "ATTAQUE : ";
    }
    if (caract.critique) {
      text += "CRITIQUE : ";
    }
    if (caract.number != null) {
      return text +
          getDescritionByCaract(caract.caract,
              number: caract.number.toString());
    }
    return text + getDescritionByCaract(caract.caract);
  }
}

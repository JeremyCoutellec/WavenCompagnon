enum ClassHero { iop, cra, eniripsa, sram, xelor, sacrieur }

enum Difficulty { low, middle, high }

class WavenHero {
  ClassHero _classHero = ClassHero.sacrieur;
  String _name = '';
  Difficulty? _difficulty;
  String? _passif;
  String? _cover;
  String? _logo;
  String? _icon;
  int? _life;
  int? _atk;

  ClassHero get classHero => _classHero;
  String get name => _name;
  Difficulty? get difficulty => _difficulty;
  String? get passif => _passif;
  String? get cover => _cover;
  String? get logo => _logo;
  String? get icon => _icon;
  int? get life => _life;
  int? get atk => _atk;

  WavenHero({
    required classHero,
    required name,
    difficulty,
    passif,
    cover,
    logo,
    icon,
    life,
    atk,
  }) {
    _classHero = classHero;
    _name = name;
    _difficulty = difficulty;
    _passif = passif;
    _cover = cover;
    _logo = logo;
    _icon = icon;
    _life = life;
    _atk = atk;
  }

  WavenHero.fromJson(Map<String, dynamic> json)
      : _classHero = WavenHero.getClassHeroByJson(json['class']),
        _name = json['name'],
        _difficulty = WavenHero.getDifficultyByJson(json['difficulty']),
        _passif = json['passif'],
        _cover = json['cover'],
        _logo = json['logo'],
        _icon = json['icon'],
        _life = json['life'],
        _atk = json['atk'];

  Map<String, dynamic> toJson() => {
        'class': classHero.toString(),
        'name': name,
        'difficulty': difficulty.toString(),
        'passif': passif,
        'cover': cover,
        'logo': logo,
        'icon': icon,
        'life': life,
        'atk': atk,
      };

  static ClassHero getClassHeroByJson(classHero) {
    switch (classHero) {
      case "iop":
        return ClassHero.iop;
      case "cra":
        return ClassHero.cra;
      case "eniripsa":
        return ClassHero.eniripsa;
      case "sram":
        return ClassHero.sram;
      case "xelor":
        return ClassHero.xelor;
      case "sacrieur":
        return ClassHero.sacrieur;
      default:
        return ClassHero.sacrieur;
    }
  }

  static String getStringOfRole(ClassHero classHero) {
    switch (classHero) {
      case ClassHero.iop:
        return "Iop";
      case ClassHero.cra:
        return "Cra";
      case ClassHero.eniripsa:
        return "Eniripsa";
      case ClassHero.sram:
        return "Sram";
      case ClassHero.xelor:
        return "Xelor";
      case ClassHero.sacrieur:
        return "Sacrieur";
      default:
        return "Sacrieur";
    }
  }

  static Difficulty? getDifficultyByJson(difficulty) {
    switch (difficulty) {
      case "low":
        return Difficulty.low;
      case "middle":
        return Difficulty.middle;
      case "high":
        return Difficulty.high;
      default:
        return null;
    }
  }

  static String getDescritionByClass(ClassHero classHero) {
    switch (classHero) {
      case ClassHero.iop:
        return "Leur tempérament impétueux et leur amour pour le combat font des Iops des paladins de l’extrême. Leur devise ? On cogne d’abord, on discute ensuite. Puis on cogne à nouveau !";
      case ClassHero.cra:
        return "« Fierté et précision », telle pourrait être la devise des Crâs. Spécialistes de l’attaque éloignée, ces archers hors pair ont su adapter leur adresse à toute arme à distance, faisant d’eux de redoutables adversaires ou des alliés précieux.";
      case ClassHero.eniripsa:
        return "Les Eniripsas sont des maîtres de la guérison. Ils concentrent leurs pouvoirs dans de petites fioles qu’ils emportent partout, prêts à soulager les souffrances de leurs alliés ou au contraire, à blesser leurs ennemis.";
      case ClassHero.sram:
        return "Connus pour leur sournoiserie, les disciples de Sram ne reculent devant rien pour arriver à leurs fins, surtout lorsqu’il s’agit de se débarrasser d’un ennemi un peu trop encombrant. Mieux vaut s’en méfier comme de son ombre, mais surtout de la leur…";
      case ClassHero.xelor:
        return "En tant que mages du temps, les Xélors jouent avec ses rouages pour ralentir un ennemi, s’accélérer eux-mêmes ou se téléporter où bon leur semble à l’aide de leurs Sinistros.";
      case ClassHero.sacrieur:
        return "Les Sacrieurs sont des berserkers qui puisent leur force dans la douleur ; cherchant les coups et les blessures, ils seront souvent en première ligne, prêts à verser le premier sang.";
      default:
        return "Les Sacrieurs sont des berserkers qui puisent leur force dans la douleur ; cherchant les coups et les blessures, ils seront souvent en première ligne, prêts à verser le premier sang.";
    }
  }

  static String getIconByClass(ClassHero classHero) {
    switch (classHero) {
      case ClassHero.iop:
        return "images/heroes/iop/icon_iop.png";
      case ClassHero.cra:
        return "images/heroes/cra/icon_cra.png";
      case ClassHero.eniripsa:
        return "images/heroes/eniripsa/icon_eniripsa.png";
      case ClassHero.sram:
        return "images/heroes/sram/icon_sram.png";
      case ClassHero.xelor:
        return "images/heroes/xelor/icon_xelor.png";
      case ClassHero.sacrieur:
        return "images/heroes/sacrieur/icon_sacrieur.png";
      default:
        return "images/heroes/sacrieur/icon_sacrieur.png";
    }
  }
}

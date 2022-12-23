import 'package:waven_compagnon/stuff/caract_model.dart';

enum TypeStuff { anneau, brassard }

enum Rarity { common, rare, epic, legendary }

class WavenStuff {
  TypeStuff _type = TypeStuff.anneau;
  String _name = '';
  List<WavenCaract> _caracts = [];
  List<WavenCaract> _addCaracts = [];
  Rarity _rarity = Rarity.common;
  String? _icon;

  TypeStuff get type => _type;
  String get name => _name;
  List<WavenCaract> get caracts => _caracts;
  List<WavenCaract> get addCaracts => _addCaracts;
  Rarity? get rarity => _rarity;
  String? get icon => _icon;

  WavenStuff({
    required type,
    required name,
    caracts,
    addCaracts,
    rarity,
    icon,
  }) {
    _type = type;
    _name = name;
    _caracts = caracts;
    _addCaracts = addCaracts;
    _rarity = rarity;
    _icon = icon;
  }

  WavenStuff.fromJson(Map<String, dynamic> json)
      : _type = WavenStuff.getTypeByJson(json['type']),
        _name = json['name'],
        _caracts = json['caracts']
            .map<WavenCaract>((element) => WavenCaract.fromJson(element))
            .toList(),
        _addCaracts = json['addCaracts']
            .map<WavenCaract>((element) => WavenCaract.fromJson(element))
            .toList(),
        _rarity = WavenStuff.getRarityByJson(json['rarity']),
        _icon = json['icon'];

  Map<String, dynamic> toJson() => {
        'type': type.toString(),
        'name': name,
        "caracts": _caracts.map((element) => element.toJson()),
        "addCaracts": _addCaracts.map((element) => element.toJson()),
        'icon': icon,
      };

  static TypeStuff getTypeByJson(type) {
    switch (type) {
      case "anneau":
        return TypeStuff.anneau;
      case "brassard":
        return TypeStuff.brassard;
      default:
        return TypeStuff.anneau;
    }
  }

  static String getStringOfClass(TypeStuff? type) {
    switch (type) {
      case TypeStuff.anneau:
        return "Anneau";
      case TypeStuff.brassard:
        return "Brassard";
      default:
        return "Anneau";
    }
  }

  static Rarity getRarityByJson(type) {
    switch (type) {
      case "common":
        return Rarity.common;
      case "rare":
        return Rarity.rare;
      case "epic":
        return Rarity.epic;
      case "legendary":
        return Rarity.legendary;
      default:
        return Rarity.common;
    }
  }

  static String getStringOfRarity(Rarity? rarity) {
    switch (rarity) {
      case Rarity.common:
        return "Commun";
      case Rarity.rare:
        return "Rare";
      case Rarity.epic:
        return "Epique";
      case Rarity.legendary:
        return "Légendaire";
      default:
        return "Anneau";
    }
  }
}

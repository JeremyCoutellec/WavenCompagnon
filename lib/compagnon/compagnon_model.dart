import 'package:waven_compagnon/caract/caract_model.dart';

enum TypeCompagnon { anneau, brassard }

enum Rarity { common, rare, krosmique, infinite }

class WavenCompagnon {
  String _name = '';
  List<WavenCaract> _caracts = [];
  Rarity _rarity = Rarity.common;
  String? _icon;

  String get name => _name;
  List<WavenCaract> get caracts => _caracts;
  Rarity? get rarity => _rarity;
  String? get icon => _icon;

  WavenCompagnon({
    required name,
    caracts,
    rarity,
    icon,
  }) {
    _name = name;
    _caracts = caracts;
    _rarity = rarity;
    _icon = icon;
  }

  WavenCompagnon.fromJson(Map<String, dynamic> json)
      : _name = json['name'],
        _caracts = json['caracts']
            .map<WavenCaract>((element) => WavenCaract.fromJson(element))
            .toList(),
        _rarity = WavenCompagnon.getRarityByJson(json['rarity']),
        _icon = json['icon'];

  Map<String, dynamic> toJson() => {
        'name': name,
        "caracts": _caracts.map((element) => element.toJson()),
        'icon': icon,
      };

  static Rarity getRarityByJson(type) {
    switch (type) {
      case "common":
        return Rarity.common;
      case "rare":
        return Rarity.rare;
      case "krosmique":
        return Rarity.krosmique;
      case "infinite":
        return Rarity.infinite;
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
      case Rarity.krosmique:
        return "Krosmique";
      case Rarity.infinite:
        return "Infinite";
      default:
        return "Anneau";
    }
  }
}

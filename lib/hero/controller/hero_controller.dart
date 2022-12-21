import 'package:flutter/cupertino.dart';
import 'package:waven_compagnon/hero/views/hero_card_list.dart';

import '../actions/hero.dart';
import '../models/hero.dart';

class WavenHeroController extends StatelessWidget {
  const WavenHeroController();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<WavenHero>>(
        future: HeroActions().getHeroes(),
        builder: (context, snapshot) =>
            HeroCardList(heros: snapshot.data ?? []));
  }
}

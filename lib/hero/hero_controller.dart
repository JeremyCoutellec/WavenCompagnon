import 'package:flutter/cupertino.dart';
import 'package:waven_compagnon/hero/views/hero_card_list.dart';

import 'hero_actions.dart';
import 'hero_model.dart';

class WavenHeroController extends StatelessWidget {
  const WavenHeroController({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<WavenHero>>(
        future: HeroActions().getHeroes(),
        builder: (context, snapshot) =>
            HeroCardList(heros: snapshot.data ?? []));
  }
}

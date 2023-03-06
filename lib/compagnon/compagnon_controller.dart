import 'package:flutter/cupertino.dart';
import 'package:waven_compagnon/compagnon/views/compagnon_card_list.dart';

import 'compagnon_actions.dart';
import 'compagnon_model.dart';

class WavenCompagnonController extends StatelessWidget {
  const WavenCompagnonController({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<WavenCompagnon>>(
        future: CompagnonActions().getCompagnons(),
        builder: (context, snapshot) =>
            CompagnonCardList(compagnons: snapshot.data ?? []));
  }
}

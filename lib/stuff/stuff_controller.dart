import 'package:flutter/cupertino.dart';
import 'package:waven_compagnon/stuff/views/stuff_card_list.dart';

import 'stuff_actions.dart';
import 'stuff_model.dart';

class WavenStuffController extends StatelessWidget {
  const WavenStuffController({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<WavenStuff>>(
        future: StuffActions().getStuffs(),
        builder: (context, snapshot) =>
            StuffCardList(stuffs: snapshot.data ?? []));
  }
}

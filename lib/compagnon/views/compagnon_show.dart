import 'package:flutter/material.dart';
import 'package:waven_compagnon/caract/caract_model.dart';
import '../compagnon_model.dart';

class CompagnonShow extends StatelessWidget {
  final WavenCompagnon compagnon;

  const CompagnonShow({super.key, required this.compagnon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: Image.asset(
          compagnon.icon ?? '',
          height: MediaQuery.of(context).size.height / 4,
        )),
        Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
            ),
            child: const Padding(
                padding: EdgeInsets.only(top: 4, bottom: 4),
                child: Text('Rareté', textAlign: TextAlign.center))),
        Padding(
            padding: const EdgeInsets.only(top: 4, bottom: 4),
            child: Text(
              WavenCompagnon.getStringOfRarity(compagnon.rarity),
              textAlign: TextAlign.center,
              style: TextStyle(color: Theme.of(context).primaryColor),
            )),
        Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
            ),
            child: const Padding(
                padding: EdgeInsets.only(top: 4, bottom: 4),
                child: Text('Effets', textAlign: TextAlign.center))),
        Padding(
            padding: const EdgeInsets.only(top: 4, bottom: 4),
            child: Column(
                children: compagnon.caracts
                    .map((caract) => Text(
                          WavenCaract.getDescrition(caract),
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        ))
                    .toList())),
      ],
    );
  }
}

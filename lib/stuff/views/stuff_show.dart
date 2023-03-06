import 'package:flutter/material.dart';
import 'package:waven_compagnon/caract/caract_model.dart';
import '../stuff_model.dart';

class StuffShow extends StatelessWidget {
  final WavenStuff stuff;

  const StuffShow({super.key, required this.stuff});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: Image.asset(
          stuff.icon ?? '',
          height: MediaQuery.of(context).size.height / 4,
        )),
        Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
            ),
            child: const Padding(
                padding: EdgeInsets.only(top: 4, bottom: 4),
                child: Text('Stuff', textAlign: TextAlign.center))),
        Padding(
            padding: const EdgeInsets.only(top: 4, bottom: 4),
            child: Text(
              WavenStuff.getStringOfClass(stuff.type),
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
                child: Text('Rareté', textAlign: TextAlign.center))),
        Padding(
            padding: const EdgeInsets.only(top: 4, bottom: 4),
            child: Text(
              WavenStuff.getStringOfRarity(stuff.rarity),
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
                child: Text('Augmentations', textAlign: TextAlign.center))),
        Padding(
            padding: const EdgeInsets.only(top: 4, bottom: 4),
            child: Column(
                children: stuff.caracts
                    .map((caract) => Text(
                          WavenCaract.getDescrition(caract),
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        ))
                    .toList())),
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
                children: stuff.addCaracts
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

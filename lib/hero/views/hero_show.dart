import 'package:flutter/material.dart';
import '../hero_model.dart';

class HeroShow extends StatelessWidget {
  final WavenHero hero;

  const HeroShow({super.key, required this.hero});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: Image.asset(
          hero.cover ?? '',
          height: MediaQuery.of(context).size.height / 4,
        )),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Column(children: [
                  Center(
                      child: Text(
                    'Point de vie de base',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  )),
                  Row(children: [
                    Icon(
                      Icons.heart_broken_sharp,
                      color: Theme.of(context).primaryColor,
                      size: 24.0,
                      semanticLabel: 'LifeIcon',
                    ),
                    Center(
                        child: Text(
                      hero.life.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ))
                  ])
                ])),
            if (hero.difficulty is Difficulty)
              Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: Column(
                    children: [
                      Center(
                          child: Text(
                        'Difficulté',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      )),
                      Row(children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Theme.of(context).primaryColor,
                                width: 10.0,
                                style: BorderStyle.solid),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(50),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: hero.difficulty == Difficulty.high ||
                                        hero.difficulty == Difficulty.middle
                                    ? Theme.of(context).primaryColor
                                    : Theme.of(context).colorScheme.secondary,
                                width: 10.0,
                                style: BorderStyle.solid),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(50),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: hero.difficulty == Difficulty.high
                                    ? Theme.of(context).primaryColor
                                    : Theme.of(context).colorScheme.secondary,
                                width: 10.0,
                                style: BorderStyle.solid),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(50),
                            ),
                          ),
                        ),
                      ]),
                    ],
                  )),
            Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Column(children: [
                  Center(
                      child: Text(
                    'Attaque de base',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  )),
                  Row(children: [
                    Icon(
                      Icons.heart_broken_outlined,
                      color: Theme.of(context).primaryColor,
                      size: 24.0,
                      semanticLabel: 'LifeIcon',
                    ),
                    Center(
                        child: Text(
                      hero.atk.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ))
                  ])
                ])),
          ],
        ),
        Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
            ),
            child: const Padding(
                padding: EdgeInsets.only(top: 4, bottom: 4),
                child: Text('Passif', textAlign: TextAlign.center))),
        Padding(
            padding: const EdgeInsets.only(top: 4, bottom: 4),
            child: Text(
              hero.passif ?? '',
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
                child: Text('Classe', textAlign: TextAlign.center))),
        Center(
            child: Image.asset(
          WavenHero.getIconByClass(hero.classHero),
          height: 100,
        )),
        Padding(
            padding: const EdgeInsets.only(top: 4, bottom: 4),
            child: Text(
              WavenHero.getStringOfClass(hero.classHero),
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
                child: Text('Description', textAlign: TextAlign.center))),
        Padding(
            padding: const EdgeInsets.only(top: 4, bottom: 4),
            child: Text(
              WavenHero.getDescritionByClass(hero.classHero),
              textAlign: TextAlign.center,
              style: TextStyle(color: Theme.of(context).primaryColor),
            ))
      ],
    );
  }
}

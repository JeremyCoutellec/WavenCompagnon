import 'package:flutter/material.dart';
import '../../core/views/nav_bar.dart';
import '../models/hero.dart';

class HeroShow extends StatelessWidget {
  final WavenHero hero;

  const HeroShow({super.key, required this.hero});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: NavBar(
            context: context, titleNavBar: hero.name, withoutTabBottom: true),
        body: Column(
          children: [
            Align(
                alignment: Alignment.topCenter,
                child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Stack(
                      children: [
                        Image.asset(
                          hero.icon ?? '',
                          height: 70,
                        ),
                        Image.asset(
                          hero.cover ?? '',
                          height: MediaQuery.of(context).size.height / 3,
                        )
                      ],
                    ))),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Column(
                      children: [
                        Center(
                            child: Text(
                          'Santé',
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        )),
                        Center(
                            child: Text(
                          hero.life.toString(),
                          textAlign: TextAlign.center,
                          style: const TextStyle(color: Colors.yellow),
                        ))
                      ],
                    )),
                Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Column(
                      children: [
                        Center(
                            child: Text(
                          'Attaque',
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        )),
                        Center(
                            child: Text(
                          hero.atk.toString(),
                          textAlign: TextAlign.center,
                          style: const TextStyle(color: Colors.yellow),
                        ))
                      ],
                    )),
                if (hero.difficulty is Difficulty)
                  Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: Column(
                        children: [
                          Center(
                              child: Text(
                            'Difficulté',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Theme.of(context).primaryColor),
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
                                        : Theme.of(context)
                                            .colorScheme
                                            .secondary,
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
                                        : Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                    width: 10.0,
                                    style: BorderStyle.solid),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(50),
                                ),
                              ),
                            ),
                          ]),
                        ],
                      ))
              ],
            ),
          ],
        ));
  }
}

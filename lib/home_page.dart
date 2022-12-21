import 'package:flutter/material.dart';
import './page.dart';
import 'hero/controller/hero_controller.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageCompanion(child: TabBarView(children: [WavenHeroController()]));
  }
}

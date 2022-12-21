import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart';

import './hero_model.dart';

class HeroActions {
  Future<List<WavenHero>> getHeroes() async {
    final String mockHeroes =
        await rootBundle.loadString('assets/mockHeroes.json');
    List<dynamic> dataList = await jsonDecode(mockHeroes);
    return dataList.map((element) => WavenHero.fromJson(element)).toList();
  }
}

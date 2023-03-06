import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart';

import 'compagnon_model.dart';

class CompagnonActions {
  Future<List<WavenCompagnon>> getCompagnons() async {
    final String mockCompagnons =
        await rootBundle.loadString('assets/mockCompagnons.json');
    List<dynamic> dataList = await jsonDecode(mockCompagnons);
    return dataList.map((element) => WavenCompagnon.fromJson(element)).toList();
  }
}

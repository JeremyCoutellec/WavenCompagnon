import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart';

import 'stuff_model.dart';

class StuffActions {
  Future<List<WavenStuff>> getStuffs() async {
    final String mockStuffs =
        await rootBundle.loadString('assets/mockStuffs.json');
    List<dynamic> dataList = await jsonDecode(mockStuffs);
    return dataList.map((element) => WavenStuff.fromJson(element)).toList();
  }
}

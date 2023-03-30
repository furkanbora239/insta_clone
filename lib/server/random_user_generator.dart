import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:insta_clone/server/model.dart';

class userGenerator {
  final String url = 'https://randomuser.me/api/';
  Future<randomUser?> fetchUser() async {
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      if (kDebugMode) {
        print('status code : ${res.statusCode}');
        var jsonBody = randomUser.fromJson(jsonDecode(res.body));
        return jsonBody;
      } else {
        throw Exception('veri çekilemedi error code: ${res.statusCode}');
      }
    }
  }
}

Future<randomUser?> userInfo() async {
  userGenerator _user = userGenerator();
  _user.fetchUser().then((value) {
    return value!.results == null
        ? throw Exception('value.results == null')
        : value.results![0];
  });
}

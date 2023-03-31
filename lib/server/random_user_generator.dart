import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;
import 'package:insta_clone/components/story_avatar.dart';
import 'package:insta_clone/server/model.dart';

class userGenerator {
  final String url = 'https://randomuser.me/api/';
  Future<randomUser?> fetchUser() async {
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      if (kDebugMode) {
        print('status code : ${res.statusCode}');
      }
      var jsonBody = randomUser.fromJson(jsonDecode(res.body));
      return jsonBody;
    } else {
      throw Exception('veri çekilemedi error code: ${res.statusCode}');
    }
  }
}

class randomUserTest extends StatefulWidget {
  const randomUserTest({super.key});

  @override
  State<randomUserTest> createState() => _randomUserTestState();
}

userGenerator rUserData = userGenerator();

class _randomUserTestState extends State<randomUserTest> {
  late randomUser user;
  @override
  void initState() {
    // TODO: implement initState
    rUserData.fetchUser().then((value) {
      return user = value ?? (throw Exception('value.results == null'));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<randomUser?>(
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          print('data emin ellerde randomUserTest ${snapshot.data}');
          return storyAvatar(
              UserName: '${user.results![0]!.name!.first}',
              UserPP: '${user.results![0]!.picture!.medium}');
        } else {
          return Text('oturdum data bekliyorum');
        }
      },
      future: rUserData.fetchUser(),
    );
  }
}

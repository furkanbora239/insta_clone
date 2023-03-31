import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/components/story_avatar.dart';
import 'package:insta_clone/provider.dart';
import 'package:insta_clone/server/model.dart';
import 'package:insta_clone/server/random_user_generator.dart';
import 'package:provider/provider.dart';

class HomeMainPage extends StatefulWidget {
  final String appName;
  const HomeMainPage({super.key, required this.appName});

  @override
  State<HomeMainPage> createState() => _HomeMainPageState();
}

class _HomeMainPageState extends State<HomeMainPage> {
  late randomUser user;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    rUserData.fetchUser().then((value) {
      return value! == null
          ? throw Exception('value.results == null')
          : user = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          //top part insata logo and chat
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.appName,
                  style: TextStyle(
                      fontFamily: 'DancingScript',
                      fontSize: MediaQuery.of(context).size.width / 15,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            const Icon(Icons.favorite_border), // notification button
            const SizedBox(
              width: 20,
            ),
            const Icon(Icons.chat_outlined), // chat button
            const SizedBox(
              width: 20,
            ),
          ],
        ),
        SizedBox(
            // story list
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 6.67,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const ClampingScrollPhysics(),
              itemCount: 2,
              itemBuilder: (context, index) {
                /* FutureBuilder<randomUser?>(
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      print(
                          'data emin ellerde randomUserTest ${snapshot.data}');
                      return Text('${user.results![0]!.email}');
                    } else {
                      return CircularProgressIndicator();
                    }
                  },
                  future: rUserData.fetchUser(),
                ); */
                return const randomUserTest();
              },
            ))
      ],
    );
  }
}

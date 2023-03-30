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
  userGenerator _user = new userGenerator();
  List<randomUserResults?>? user = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _user.fetchUser().then((value) {
      setState(() {
        if (kDebugMode) {
          print('home init set state value: ${value!.results}');
        }
        user = value?.results;

        print('home user try: ${user![0]!.email!}');
      });
    });
    print('home init code user result: $user');
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
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: const ClampingScrollPhysics(),
              children: [
                storyAvatar(
                    UserName: 'mahmut tuncer acar',
                    UserPP: 'https://randomuser.me/api/portraits/women/82.jpg'),
                storyAvatar(
                    UserName: 'blackzebra970',
                    UserPP:
                        'https://randomuser.me/api/portraits/med/men/73.jpg'),
                storyAvatar(
                    UserName: 'mahmut tuncer acar',
                    UserPP: 'https://randomuser.me/api/portraits/women/83.jpg'),
                storyAvatar(
                    UserName: 'mahmut tuncer acar',
                    UserPP: 'https://randomuser.me/api/portraits/women/85.jpg'),
                storyAvatar(
                    UserName: 'blackzebra970',
                    UserPP:
                        'https://randomuser.me/api/portraits/med/men/72.jpg'),
                storyAvatar(
                    UserName: userInfo().toString(),
                    UserPP: 'https://randomuser.me/api/portraits/women/87.jpg'),
              ],
            ))
      ],
    );
  }
}

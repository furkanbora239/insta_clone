import 'package:flutter/material.dart';
import 'package:insta_clone/pages/explore.dart';
import 'package:insta_clone/pages/home.dart';
import 'package:insta_clone/pages/post.dart';
import 'package:insta_clone/pages/profile.dart';
import 'package:insta_clone/pages/reals.dart';
import 'package:insta_clone/provider.dart';
import 'package:provider/provider.dart';

//vars
int page = 0;

void main() {
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => vars())],
      child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.amber),
      home: Scaffold(
          // =====  nav bar here ======
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: page,
              onTap: (value) {
                setState(() {
                  page = value;
                });
              },
              showSelectedLabels: false,
              showUnselectedLabels: false,
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_filled), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(Icons.add_box_outlined), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(Icons.slow_motion_video_rounded), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person_rounded), label: '')
              ]),
          body: SafeArea(child: openPage[page])),
    );
  }
}

List<Widget> openPage = [
  const HomeMainPage(
    appName: 'Instagram', //top app name
  ),
  const exploreMainPage(),
  const postMainPage(),
  const realsMainPage(),
  const profileMainPage()
];

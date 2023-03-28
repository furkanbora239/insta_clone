import 'package:flutter/material.dart';
import 'package:insta_clone/provider.dart';
import 'package:provider/provider.dart';

class exploreMainPage extends StatefulWidget {
  const exploreMainPage({super.key});

  @override
  State<exploreMainPage> createState() => _exploreMainPageState();
}

class _exploreMainPageState extends State<exploreMainPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: context.read<vars>().c2),
      child: const Center(
        child: Text(
          'Explore Page',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    ));
  }
}

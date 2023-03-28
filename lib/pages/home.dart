import 'package:flutter/material.dart';
import 'package:insta_clone/provider.dart';
import 'package:provider/provider.dart';

class HomeMainPage extends StatefulWidget {
  const HomeMainPage({super.key});

  @override
  State<HomeMainPage> createState() => _HomeMainPageState();
}

class _HomeMainPageState extends State<HomeMainPage> {
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
          'Home Page',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    ));
  }
}

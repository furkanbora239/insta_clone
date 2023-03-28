import 'package:flutter/material.dart';
import 'package:insta_clone/provider.dart';
import 'package:provider/provider.dart';

class profileMainPage extends StatefulWidget {
  const profileMainPage({super.key});

  @override
  State<profileMainPage> createState() => _profileMainPageState();
}

class _profileMainPageState extends State<profileMainPage> {
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
          'Profile Page',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    ));
  }
}

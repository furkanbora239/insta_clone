import 'package:flutter/material.dart';
import 'package:insta_clone/provider.dart';
import 'package:provider/provider.dart';

class realsMainPage extends StatefulWidget {
  const realsMainPage({super.key});

  @override
  State<realsMainPage> createState() => _realsMainPageState();
}

class _realsMainPageState extends State<realsMainPage> {
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
          'Reals Page',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:insta_clone/provider.dart';
import 'package:provider/provider.dart';

class postMainPage extends StatefulWidget {
  const postMainPage({super.key});

  @override
  State<postMainPage> createState() => _postMainPageState();
}

class _postMainPageState extends State<postMainPage> {
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
          'Post Page',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    ));
  }
}

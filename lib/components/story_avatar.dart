import 'package:flutter/material.dart';
import 'package:insta_clone/provider.dart';
import 'package:provider/provider.dart';

class storyAvatar extends StatefulWidget {
  final String UserName;
  final String UserPP;
  const storyAvatar({super.key, required this.UserName, required this.UserPP});

  @override
  State<storyAvatar> createState() => _storyAvatarState();
}

class _storyAvatarState extends State<storyAvatar> {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: context.read<vars>().c2, shape: BoxShape.circle),
            padding: const EdgeInsets.all(4),
            child: CircleAvatar(
              radius: deviceWidth / 11,
              backgroundColor: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: CircleAvatar(
                  foregroundImage: NetworkImage(widget.UserPP),
                  radius: deviceWidth / 10,
                ),
              ),
            ),
          ),
          SizedBox(
            width: deviceWidth / 4.55,
            child: Text(
              widget.UserName,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: deviceWidth / 34),
            ),
          )
        ],
      ),
    );
  }
}

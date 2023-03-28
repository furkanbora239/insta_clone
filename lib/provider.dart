import 'package:flutter/material.dart';

class vars with ChangeNotifier {
  /*
      //  Main color vars
*/
  final Color _c1 = const Color(0xFF42A5F5);
  final LinearGradient _c2 = const LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [Colors.yellow, Colors.red, Colors.purple],
  );

  Color get c1 => _c1;
  LinearGradient get c2 => _c2;
}

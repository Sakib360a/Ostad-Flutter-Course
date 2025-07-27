import 'package:class3/screens/appDrawerT.dart';
import 'package:class3/screens/module9_class2.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light
      ),
      debugShowCheckedModeBanner: false,
      home: Appdrawert(),
    );
  }
}

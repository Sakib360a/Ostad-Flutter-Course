
import 'package:flutter/material.dart';
import 'package:module11/screens/counterApp.dart';

void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Counterapp(),
    );
  }
}

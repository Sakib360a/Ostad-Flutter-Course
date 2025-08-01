import 'package:class3/screens/advance_navigator.dart';
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
        brightness: Brightness.light,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
          )

        ),
      ),
      debugShowCheckedModeBanner: false,
      home: AdvanceNavigator(),
    );
  }
}

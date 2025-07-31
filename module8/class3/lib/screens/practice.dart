import 'package:flutter/material.dart';

class Practice extends StatelessWidget {
  const Practice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practice'),
        bottom: TabBar(tabs: [
          Tab(
            text: 'Text',
          )
        ]),
      ),
    );
  }
}

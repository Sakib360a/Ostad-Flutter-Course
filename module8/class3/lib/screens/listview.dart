import 'package:flutter/material.dart';

class Listview extends StatelessWidget {
  const Listview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.deepPurple[300],),
      body: Column(
        children: [
          Container(
            height: 240,
            //color: Colors.deepPurple,
            decoration: BoxDecoration(
              color: Colors.deepPurple[400],

            ),
          ),
          Expanded(child: ListView.builder(
            itemCount: 8,
              itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.deepPurple[400],
                height: 120,
                child: Text('Hello World'),
              ),
            );
          })),
          Container(
            color: Colors.red,
            height: 80,
          ),
        ],
      ),
    );
  }
}

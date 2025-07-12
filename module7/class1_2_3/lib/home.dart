import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
        backgroundColor: Colors.orange,
        elevation: 7,
        shadowColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Text1", style: TextStyle(fontSize: 35)),
            Text("Text1", style: TextStyle(fontSize: 35)),
            Text("Text1", style: TextStyle(fontSize: 35)),
            Text("Text1", style: TextStyle(fontSize: 35)),
            Text("Text1", style: TextStyle(fontSize: 35)),
            Text("Text1", style: TextStyle(fontSize: 35)),
            Text("Text1", style: TextStyle(fontSize: 35)),
            Text("Text1", style: TextStyle(fontSize: 35)),
            Text("Text1", style: TextStyle(fontSize: 35)),
            Text("Text1", style: TextStyle(fontSize: 35)),
            Text("Text1", style: TextStyle(fontSize: 35)),
            Text("Text1", style: TextStyle(fontSize: 35)),
            Text("Text1", style: TextStyle(fontSize: 35)),
            Text("Text1", style: TextStyle(fontSize: 35)),
            Text("Text1", style: TextStyle(fontSize: 35)),
            Text("Text1", style: TextStyle(fontSize: 35)),
            Text("Text1", style: TextStyle(fontSize: 35)),
            Text("Text1", style: TextStyle(fontSize: 35)),
            Text("Text1", style: TextStyle(fontSize: 35)),
            Text("Text1", style: TextStyle(fontSize: 35)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Text("Text1", style: TextStyle(fontSize: 35)),
                  Text("Text1", style: TextStyle(fontSize: 35)),
                  Text("Text1", style: TextStyle(fontSize: 35)),
                  Text("Text1", style: TextStyle(fontSize: 35)),
                  Text("Text1", style: TextStyle(fontSize: 35)),
                  Text("Text1", style: TextStyle(fontSize: 35)),
                  Text("Text1", style: TextStyle(fontSize: 35)),
                  Text("Text1", style: TextStyle(fontSize: 35)),
                  Text("Text1", style: TextStyle(fontSize: 35)),
                  Text("Text1", style: TextStyle(fontSize: 35)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

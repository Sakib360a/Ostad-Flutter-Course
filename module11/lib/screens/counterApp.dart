import 'package:flutter/material.dart';

class Counterapp extends StatefulWidget {
  const Counterapp({super.key});

  @override
  State<Counterapp> createState() => _CounterappState();
}

class _CounterappState extends State<Counterapp> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Counter App'),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              count.toString(),
              style: TextStyle(fontSize: 90, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  style: IconButton.styleFrom(
                    side: BorderSide(color: Colors.redAccent),
                    highlightColor: Colors.orange,
                  ),
                  onPressed: () {
                    setState(() {
                      count++;
                    });
                  },
                  icon: Icon(Icons.add, size: 60, color: Colors.black),
                ),
                IconButton(
                  style: IconButton.styleFrom(
                    side: BorderSide(color: Colors.orange),
                  ),
                  onPressed: () {
                    setState(() {
                      count--;
                    });
                  },
                  icon: Icon(Icons.remove, size: 60, color: Colors.black),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                side: BorderSide(color: Colors.redAccent),
                backgroundColor: Colors.orangeAccent,
                foregroundColor: Colors.black,
                fixedSize: Size(110, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                setState(() {
                  count = 0;
                });
              },
              child: Text('Reset', style: TextStyle(fontSize: 25)),
            ),
          ],
        ),
      ),
    );
  }
}

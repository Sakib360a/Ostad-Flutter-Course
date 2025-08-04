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
      appBar: AppBar(
        title: Text('Counter App'),
        shadowColor: Colors.black,
        elevation: 2,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 170),
            Text(
              count.toString(),
              style: TextStyle(fontSize: 120, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constrains) {
                return Wrap(
                  spacing: 50,
                  runSpacing: 30,
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
                        highlightColor: Colors.redAccent,
                      ),
                      onPressed: () {
                        setState(() {
                          count--;
                        });
                      },
                      icon: Icon(Icons.remove, size: 60, color: Colors.black),
                    ),
                  ],
                );
              },
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     IconButton(
            //       style: IconButton.styleFrom(
            //         side: BorderSide(color: Colors.redAccent),
            //         highlightColor: Colors.orange,
            //       ),
            //       onPressed: () {
            //         setState(() {
            //           count++;
            //         });
            //       },
            //       icon: Icon(Icons.add, size: 60, color: Colors.black),
            //     ),
            //     IconButton(
            //       style: IconButton.styleFrom(
            //         side: BorderSide(color: Colors.orange),
            //         highlightColor: Colors.redAccent,
            //       ),
            //       onPressed: () {
            //         setState(() {
            //           count--;
            //         });
            //       },
            //       icon: Icon(Icons.remove, size: 60, color: Colors.black),
            //     ),
            //   ],
            // ),
            SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                side: BorderSide(color: Colors.redAccent),
                backgroundColor: Colors.orangeAccent,
                foregroundColor: Colors.black,
                fixedSize: Size(120, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                setState(() {
                  count = 0;
                  final snackBar = SnackBar(
                    content: Text(
                      '✔️  Reset Successful',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    duration: Duration(seconds: 2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    behavior: SnackBarBehavior.floating,
                  );
                  ScaffoldMessenger.of(context).clearSnackBars();
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
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

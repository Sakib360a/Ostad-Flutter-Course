import 'package:flutter/material.dart';

class CounterappT extends StatefulWidget {
  const CounterappT({super.key});

  @override
  State<CounterappT> createState() => _CounterappState();
}

class _CounterappState extends State<CounterappT> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
        shadowColor: Colors.black,
        elevation: 2,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              count.toString(),
              style: const TextStyle(fontSize: 90, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                // Define a threshold width. If the available width is less than this,
                // the buttons will be in a Column. Otherwise, they'll be in a Row.
                const double responsiveWidthThreshold = 200.0; // Adjust as needed

                if (constraints.maxWidth < responsiveWidthThreshold) {
                  // Display buttons in a Column if width is too small
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        style: IconButton.styleFrom(
                          side: const BorderSide(color: Colors.redAccent),
                          highlightColor: Colors.orange,
                        ),
                        onPressed: () {
                          setState(() {
                            count++;
                          });
                        },
                        icon: const Icon(Icons.add, size: 60, color: Colors.black),
                      ),
                      const SizedBox(height: 16), // Add some spacing between buttons in column
                      IconButton(
                        style: IconButton.styleFrom(
                          side: const BorderSide(color: Colors.orange),
                          highlightColor: Colors.redAccent,
                        ),
                        onPressed: () {
                          setState(() {
                            count--;
                          });
                        },
                        icon: const Icon(Icons.remove, size: 60, color: Colors.black),
                      ),
                    ],
                  );
                } else {
                  // Display buttons in a Row if there's enough width
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        style: IconButton.styleFrom(
                          side: const BorderSide(color: Colors.redAccent),
                          highlightColor: Colors.orange,
                        ),
                        onPressed: () {
                          setState(() {
                            count++;
                          });
                        },
                        icon: const Icon(Icons.add, size: 60, color: Colors.black),
                      ),
                      IconButton(
                        style: IconButton.styleFrom(
                          side: const BorderSide(color: Colors.orange),
                          highlightColor: Colors.redAccent,
                        ),
                        onPressed: () {
                          setState(() {
                            count--;
                          });
                        },
                        icon: const Icon(Icons.remove, size: 60, color: Colors.black),
                      ),
                    ],
                  );
                }
              },
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.redAccent),
                backgroundColor: Colors.orangeAccent,
                foregroundColor: Colors.black,
                fixedSize: const Size(110, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                setState(() {
                  count = 0;
                  const snackBar = SnackBar(
                    content: Text('✔️  Reset Successful'),
                    duration: Duration(seconds: 2),
                  );
                  ScaffoldMessenger.of(context).clearSnackBars();
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                });
              },
              child: const Text('Reset', style: TextStyle(fontSize: 25)),
            ),
          ],
        ),
      ),
    );
  }
}

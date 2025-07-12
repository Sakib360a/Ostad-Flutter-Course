import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(backgroundColor: Colors.orange),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              onPressed: () {
                print("Clicked");
              },
              child: Text("Tap"),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 65,
              //width: 100,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, //for button color
                  foregroundColor: Colors.black, //for text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                onPressed: () {
                  print("Clicked");
                },
                child: Text("Tap"),
              ),
            ),
            SizedBox(height: 10),
            OutlinedButton(onPressed: () {}, child: Text("Click")),
            TextButton(
              onPressed: () {},
              child: Text(
                "TextButton",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            Icon(Icons.add, size: 50),
            Icon(Icons.phone_iphone, size: 50),
            IconButton(
              onPressed: () {
                print("Icon Button Pressed");
              },
              icon: Icon(Icons.alarm, size: 50),
            ),
            GestureDetector(
              onTap: () {
                print("Clicked");
              },
              child: Text(
                "OnlyText",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
            InkWell(
              onTap: () {
                print("Clicked");
              },
              child: Text(
                "InkWellButton",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              //padding: EdgeInsets.all(20),
              //padding: EdgeInsets.only(left: 20, top: 30),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Text("Padding",style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),)),
          ],
        ),
      ),
    );
  }
}

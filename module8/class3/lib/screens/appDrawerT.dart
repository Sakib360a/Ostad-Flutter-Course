import 'package:flutter/material.dart';

class Appdrawert extends StatelessWidget {
  const Appdrawert({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child: ListView(children: [/* Drawer items */])),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 65,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xFFEAF1FB),
              ),
              child: Row(
                children: [
                  //SizedBox(width: 8),
                  Builder(
                    builder: (context) => IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () => Scaffold.of(context).openDrawer(),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.transparent,
                        filled: true,
                        hintText: 'Search in mail',
                        hintStyle: TextStyle(fontSize: 18),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  CircleAvatar(
                    radius: 18,
                    backgroundImage: NetworkImage('https://media.licdn.com/dms/image/v2/D5603AQEcKOfN60fsVw/profile-displayphoto-shrink_100_100/B56ZRfdrylHQAU-/0/1736768405103?e=1756339200&v=beta&t=BSqtq41B5Mg1Ym_mNRxSo3PQJjqer5zU8-0m0mg--HY'), // Use NetworkImage for online image
                  ),
                  //SizedBox(width: 15),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}

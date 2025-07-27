import 'package:flutter/material.dart';

class Module9Class2 extends StatelessWidget {
  const Module9Class2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 3,
        iconTheme: IconThemeData(color: Colors.white),
        shadowColor: Colors.black.withOpacity(1),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white.withOpacity(0.9),
        child: Stack(
          children: [
            Positioned(
              top: -30,
              left: -95,
              child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.tealAccent.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(600),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(0, 0),
                      spreadRadius: 30,
                      blurRadius: 10,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: -80,
              left: -140,
              child: Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.tealAccent.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(600),
                ),
              ),
            ),
            Positioned(
              top: -130,
              left: -180,
              child: Container(
                height: 500,
                width: 500,
                decoration: BoxDecoration(
                  color: Colors.tealAccent.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(600),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80, left: 13),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withAlpha(90),
                      offset: Offset(0, 3),
                      spreadRadius: 0.001,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: ClipOval(
                  child: Image.network(
                    'https://media.licdn.com/dms/image/v2/D5603AQEcKOfN60fsVw/profile-displayphoto-shrink_800_800/B56ZRfdrylHQAc-/0/1736768405121?e=1756339200&v=beta&t=QjLodgGCylHqU7CFtuzM2WH6JjaYrxoufGId40Wfu38',
                    height: 60,
                    width: 60,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),              //Image
            Positioned(
              top: 150,
              left: 10,
              child: Text(
                'Sakib685',
                style: TextStyle(
                  color: Colors.teal,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),          //Username
            Positioned(
                top: 190,
                left: 10,
                child: Text('abubakkarsakib685@gmail.com',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),)),          //Email
          ],
        ),
      ),

    );
  }
}

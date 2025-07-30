import 'package:class3/screens/widgets/booking_card.dart';
import 'package:flutter/material.dart';

class Listview extends StatelessWidget {
  const Listview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 10),
              child: Booking_Price_card(img: 'assets/images/bali.jpg', price: '500',),
            );
          })),

        ],
      ),
    );
  }
}

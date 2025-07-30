import 'package:flutter/material.dart';

class Booking_Price_card extends StatelessWidget {
  final String img,price;
  const Booking_Price_card({
    super.key, required this.img, required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      height: 140,
      width: double.infinity,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3), // Adjust opacity for desired darkness
            offset: Offset(0, 7), // X, Y offset from the container (e.g., 0 for no horizontal shift, 5 for 5 pixels down)
            blurRadius: 5,       // The blurriness of the shadow
            spreadRadius: 0,      // How much the shadow spreads out from the box
          ),
        ],
        borderRadius: BorderRadius.circular(15),
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          Positioned(
            top:0,
            bottom: 0,
            left: 0,
            right: 240,
            child: Image.asset(
              img,
              fit: BoxFit.cover,
              width: double.infinity,
              scale: 1,
            ),
          ),
          Positioned(
            top: 10,
            left: 150,
            child: Text('Romantic Paris Gateway',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
          ),
          Positioned(
            top: 45,
            left: 150,

            child: Row(
              children: [
                Icon(Icons.timer,size: 20,),
                SizedBox(
                  width: 5,
                ),
                Text('4 nights ● 5 days',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 15),),
              ],
            ),
          ),
          Positioned(
            top: 85,
            left: 150,
            child: Row(
              children: [
                SizedBox(width: 3,),
                Text(price,style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold,fontSize: 22),),
                SizedBox(width: 30,),
                ElevatedButton(onPressed: (){},style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.blueAccent),
                  shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                  foregroundColor: WidgetStateProperty.all(Colors.white),
                ), child: Text('Book Now',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),),


              ],
            ),
          ),
        ],
      ),
    );
  }
}
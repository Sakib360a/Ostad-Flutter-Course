import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Assignment extends StatelessWidget {
  const Assignment({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.dark, // For iOS
        ),
        child: Scaffold(

      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  //height: double.infinity,
                  width: double.infinity,
                  child: Image.asset("assets/images/travel1.jpg"),
                ),
                Positioned(
                  top: 100,
                  left: 20,
                  right: 0,
                  child: Text(
                    'Explore the World',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: 70,
                  left: 21,
                  right: 0,
                  child: Text(
                    'Find your next trip',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: 180,
                  left: 0,
                  right: 0,
                  child: Form(
                    child: SizedBox(
                      height: 60,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 90),
                        child: TextFormField(
                          style: TextStyle(color: Colors.white, fontSize: 22),
                          decoration: InputDecoration(
                            //fillColor: Color(0xFF333D4D),
                            fillColor: Colors.black87.withOpacity(0.5),
                            filled: true,
                            hintText: 'Search',
                            hintStyle: TextStyle(color: Colors.white),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(
                                left: 20,
                                top: 2,
                                right: 10,
                              ),
                              child: Icon(
                                Icons.search,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                            border: OutlineInputBorder(
                              //borderSide: BorderSide(color: Colors.white, width: 2.5),
                              borderRadius: BorderRadius.circular(45),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white54,
                                width: 2.2,
                              ),
                              borderRadius: BorderRadius.circular(45),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blue,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(45),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                              borderRadius: BorderRadius.circular(45),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 180,
                  left: 320,
                  right: 0,
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.7),
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset('assets/images/Filter.png', scale: 3),
                  ),
                ),
              ],
            ),
            GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              children: [
                Container(
                  //padding: EdgeInsets.symmetric(horizontal: 10,),
                    margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.transparent,
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Stack(
                      children: [
                        SizedBox(
                          height: 250,
                          width: 250,
                          child: Image.asset(
                            'assets/images/bali.jpg',
                            scale: 1,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          top: 130,
                          left: 10,
                          right: 0,
                          child: Text(
                            'Bali',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    )
                ),
                Container(
                  //padding: EdgeInsets.symmetric(horizontal: 10,),
                    margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.transparent,
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Stack(
                      children: [
                        SizedBox(
                          height: 250,
                          width: 250,
                          child: Image.asset(
                            'assets/images/malaysia.jpg',
                            scale: 1,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          top: 130,
                          left: 10,
                          right: 0,
                          child: Text(
                            'Malaysia',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    )
                ),
                Container(
                  //padding: EdgeInsets.symmetric(horizontal: 10,),
                    margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.transparent,
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Stack(
                      children: [
                        SizedBox(
                          height: 250,
                          width: 250,
                          child: Image.asset(
                            'assets/images/china.jpg',
                            scale: 1,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          top: 130,
                          left: 10,
                          right: 0,
                          child: Text(
                            'China',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    )
                ),
                Container(
                  //padding: EdgeInsets.symmetric(horizontal: 10,),
                    margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.transparent,
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Stack(
                      children: [
                        SizedBox(
                          height: 250,
                          width: 250,
                          child: Image.asset(
                            'assets/images/grid1.jpg',
                            scale: 1,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          top: 130,
                          left: 10,
                          right: 0,
                          child: Text(
                            'Gateway',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    )
                ),
]
            ),
            SizedBox(height: 10),
            Container(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Text(
                  'Popular Location',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 15),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.transparent,
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Stack(
                      children: [
                        SizedBox(
                          height: 150,
                          width: 250,
                          child: Image.asset('assets/images/swit.png'),
                        ),
                        Positioned(
                          top: 65,
                          left: 20,
                          right: 0,
                          child: Text(
                            'Switzerland',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 105,
                          left: 20,
                          right: 0,
                          child: Text(
                            'from \$699',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 108,
                          left: 205,
                          right: 0,
                          child: Icon(
                            Icons.star,
                            color: Colors.orangeAccent,
                            size: 30,
                          ),
                        ),
                        Positioned(
                          top: 110,
                          left: 180,
                          right: 0,
                          child: Text(
                            '4.9',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.transparent,
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Stack(
                      children: [
                        SizedBox(
                          height: 150,
                          width: 250,
                          child: Image.asset(
                            'assets/images/illu.png',
                            scale: 1,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          top: 65,
                          left: 20,
                          right: 0,
                          child: Text(
                            'Ilulissat Icefjord',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 105,
                          left: 20,
                          right: 0,
                          child: Text(
                            'from \$726',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 108,
                          left: 205,
                          right: 0,
                          child: Icon(
                            Icons.star,
                            color: Colors.orangeAccent,
                            size: 30,
                          ),
                        ),
                        Positioned(
                          top: 110,
                          left: 180,
                          right: 0,
                          child: Text(
                            '4.9',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.transparent,
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Stack(
                      children: [
                        SizedBox(
                          height: 150,
                          width: 250,
                          child: Image.asset(
                            'assets/images/norway.jpg',
                            scale: 2,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          top: 65,
                          left: 20,
                          right: 0,
                          child: Text(
                            'Norway',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 33,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 110,
                          left: 20,
                          right: 0,
                          child: Text(
                            'from \$673',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 108,
                          left: 205,
                          right: 0,
                          child: Icon(
                            Icons.star,
                            color: Colors.orangeAccent,
                            size: 30,
                          ),
                        ),
                        Positioned(
                          top: 110,
                          left: 180,
                          right: 0,
                          child: Text(
                            '4.9',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 15),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.transparent,
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Stack(
                      children: [
                        SizedBox(
                          height: 150,
                          width: 250,
                          child: Image.asset(
                            'assets/images/china.jpg',
                            scale: 2,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          top: 65,
                          left: 20,
                          right: 0,
                          child: Text(
                            'China',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 33,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 110,
                          left: 20,
                          right: 0,
                          child: Text(
                            'from \$800',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 108,
                          left: 205,
                          right: 0,
                          child: Icon(
                            Icons.star,
                            color: Colors.orangeAccent,
                            size: 30,
                          ),
                        ),
                        Positioned(
                          top: 110,
                          left: 180,
                          right: 0,
                          child: Text(
                            '4.9',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 15),
                ],
              ),
            ),
            SizedBox(height: 15),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Trending Packages',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Column(
                  children: [
                    Container(
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
                              'assets/images/grid1.jpg',
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
                                Text('\$799',style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold,fontSize: 22),),
                                SizedBox(width: 40,),
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
                    ),
                    SizedBox(height: 20,),
                    Container(
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
                              'assets/images/bali.jpg',
                              fit: BoxFit.cover,
                              width: double.infinity,
                              scale: 1,
                            ),
                          ),
                          Positioned(
                            top: 10,
                            left: 150,
                            child: Text('Bali Adventure Tour',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
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
                                Text('\$678',style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold,fontSize: 22),),
                                SizedBox(width: 40,),
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
                    ),
                    SizedBox(height: 20,),
                    Container(
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
                              'assets/images/nepal.jpg',
                              fit: BoxFit.cover,
                              width: double.infinity,
                              scale: 1,
                            ),
                          ),
                          Positioned(
                            top: 10,
                            left: 150,
                            child: Text('Nepal Tour',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
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
                                Text('3 nights ● 4 days',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 15),),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 85,
                            left: 150,
                            child: Row(
                              children: [
                                SizedBox(width: 3,),
                                Text('\$599',style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold,fontSize: 22),),
                                SizedBox(width: 40,),
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
                    ),
                    SizedBox(height: 20,),
                    Container(
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
                              'assets/images/maldive.jpg',
                              fit: BoxFit.cover,
                              width: double.infinity,
                              scale: 1,
                            ),
                          ),
                          Positioned(
                            top: 10,
                            left: 150,
                            child: Text('Maldive Tour',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
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
                                Text('5 nights ● 6 days',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 15),),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 85,
                            left: 150,
                            child: Row(
                              children: [
                                SizedBox(width: 3,),
                                Text('\$1000',style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold,fontSize: 22),),
                                SizedBox(width: 40,),
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
                    ),
                    SizedBox(height: 20,),
                    Container(
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
                              'assets/images/malaysia.jpg',
                              fit: BoxFit.cover,
                              width: double.infinity,
                              scale: 1,
                            ),
                          ),
                          Positioned(
                            top: 10,
                            left: 150,
                            child: Text('Malaysia Tour',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
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
                                Text('3 nights ● 4 days',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 15),),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 85,
                            left: 150,
                            child: Row(
                              children: [
                                SizedBox(width: 3,),
                                Text('\$600',style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold,fontSize: 22),),
                                SizedBox(width: 40,),
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
                    ),
                    SizedBox(height: 20,),
                    Container(
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
                              'assets/images/china.jpg',
                              fit: BoxFit.cover,
                              width: double.infinity,
                              scale: 1,
                            ),
                          ),
                          Positioned(
                            top: 10,
                            left: 150,
                            child: Text('China Tour',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
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
                                Text('6 nights ● 7 days',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 15),),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 85,
                            left: 150,
                            child: Row(
                              children: [
                                SizedBox(width: 3,),
                                Text('\$800',style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold,fontSize: 22),),
                                SizedBox(width: 40,),
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
                    ),
                    SizedBox(height: 20,),
                    Container(
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
                              'assets/images/denmark.jpg',
                              fit: BoxFit.cover,
                              width: double.infinity,
                              scale: 1,
                            ),
                          ),
                          Positioned(
                            top: 10,
                            left: 150,
                            child: Text('Denmark Tour',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
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
                                Text('5 nights ● 5 days',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 15),),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 85,
                            left: 150,
                            child: Row(
                              children: [
                                SizedBox(width: 3,),
                                Text('\$899',style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold,fontSize: 22),),
                                SizedBox(width: 40,),
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
                    ),
                  ],
                ),

               SizedBox(height: 50),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}

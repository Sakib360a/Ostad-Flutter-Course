import 'package:flutter/material.dart';
class AdvanceNavigator extends StatelessWidget {
  const AdvanceNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Advanced Navigator'),
          shadowColor: Colors.black,
          elevation: 2,
        ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){}, child: Text('Button1')),
            SizedBox(height: 15,),
            ElevatedButton(onPressed: (){}, child: Text('Button2')),
            SizedBox(height: 15,),
            ElevatedButton(onPressed: (){}, child: Text('Button3')),
            SizedBox(height: 15,),
            ElevatedButton(onPressed: (){}, child: Text('Button4')),
            SizedBox(height: 15,),
            ElevatedButton(onPressed: (){}, child: Text('Button5')),
          ],
        ),
      ),
    );
  }
}

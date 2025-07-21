import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AlertdialogS extends StatelessWidget {
  const AlertdialogS({super.key});

  @override
  Widget build(BuildContext context) {
    void showAlert() {
      showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) => AlertDialog(
          title: Text('Are you Sure ?'),
          content: Text(
            'Please Read the Instructions carefully',
            style: TextStyle(fontSize: 22),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Ok', style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      );
    }
    void showBottomS(){
      showModalBottomSheet(context: context, builder: (BuildContext context){
        return Container(
          height: 400,
          width: 400,
          child: Column(
            children: [
              SizedBox(height: 15,),
              Text('Choose Options',style: TextStyle(fontSize: 20),),
              SizedBox(height: 40,),
                ListTile(title: Text('Option 1'),
                onTap: (){}
                  ,),

              ListTile(title: Text('Option 2'),),
              ListTile(title: Text('Option 3'),),
            ],
          ),
        );
      });
    }

    void showAlertIcon() {
      showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) => AlertDialog(
          title: Text('Are you Sure ?'),
          content: Row(
            children: [
              Icon(Icons.warning),
              SizedBox(
                width: 5,
              ),
              Text(
                'Please Read the Instructions',
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Ok', style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        shadowColor: Colors.black,
        elevation: 5,
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              showAlert();
            },
            child: Text('Submit'),
          ),
          ElevatedButton(
            onPressed: () {
              showAlertIcon();
            },
            child: Text('Alert Icon'),
          ),
          ElevatedButton(
            onPressed: () {
              showBottomS();
            },
            child: Text('Bottom Sheet'),
          ),
          CupertinoButton(child: Text('Text'), onPressed: (){}),

        ],
      ),
    );
  }
}

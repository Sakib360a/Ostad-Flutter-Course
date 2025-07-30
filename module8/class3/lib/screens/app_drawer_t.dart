import 'package:flutter/material.dart';

class Appdrawert extends StatelessWidget {
  const Appdrawert({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            SizedBox(
              height: 80,
              width: double.infinity,
              child: DrawerHeader(
                  child: Row(
                    children: [
                      SizedBox(width: 5,),
                      Image.asset('assets/images/icons8-gmail-192.png',scale: 7,),
                      SizedBox(width: 05,),
                      Text('Gmail',style: TextStyle(fontSize: 22),)
                    ],
                  )),
            ),
            ListTile(
              style: ListTileStyle.list,
              leading: Icon(Icons.all_inbox),
              title: Text('All Inboxes',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
              onTap: (){},
            ),
            Row(
              children: [
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.only(left: 57),
                        child: Divider())),
              ],
            ),
            ListTile(
              style: ListTileStyle.list,
              leading: Icon(Icons.label_important_outline),
              title: Text('Important and unread',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
              onTap: (){},
            ),
            ListTile(
              style: ListTileStyle.list,
              leading: Icon(Icons.star_outline),
              title: Text('Starred',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
              onTap: (){},
            ),
            ListTile(
              style: ListTileStyle.list,
              leading: Icon(Icons.inbox_rounded),
              title: Text('Inbox',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
              onTap: (){},
            ),
            Row(
              children: [
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.only(left: 57),
                        child: Divider())),
              ],
            ),
            /* Drawer items */
            ListTile(
              style: ListTileStyle.list,
              leading: Icon(Icons.star_outline),
              title: Text('Starred',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
              onTap: (){},
            ),
            ListTile(
              style: ListTileStyle.list,
              leading: Icon(Icons.access_time_rounded),
              title: Text('Snoozed',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
              onTap: (){},
            ),
            ListTile(
              style: ListTileStyle.list,
              leading: Icon(Icons.label_important_outline),
              title: Text('Important',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
              onTap: (){},
            ),
            ListTile(
              style: ListTileStyle.list,
              leading: Icon(Icons.send_outlined),
              title: Text('Sent',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
              onTap: (){},
            ),
            ListTile(
              style: ListTileStyle.list,
              leading: Icon(Icons.schedule_send),
              title: Text('Scheduled',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
              onTap: (){},
            ),
            ListTile(
              style: ListTileStyle.list,
              leading: Icon(Icons.outbox),
              title: Text('Outbox',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
              onTap: (){},
            ),
            ListTile(
              style: ListTileStyle.list,
              leading: Icon(Icons.file_copy_outlined),
              title: Text('Drafts',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
              onTap: (){},
            ),
            ListTile(
              style: ListTileStyle.list,
              leading: Icon(Icons.mail_outline),
              title: Text('All emails',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
              onTap: (){},
            ),
            ListTile(
              style: ListTileStyle.list,
              leading: Icon(Icons.report_gmailerrorred),
              title: Text('Spam',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
              onTap: (){},
            ),
            ListTile(
              style: ListTileStyle.list,
              leading: Icon(Icons.delete_outline),
              title: Text('Bin',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
              onTap: (){},
            ),
            Row(
              children: [
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.only(left: 57),
                        child: Divider())),
              ],
            ),
            ListTile(
              style: ListTileStyle.list,
              leading: Icon(Icons.label_outline),
              title: Text('Notes',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
              onTap: (){},
            ),
            ListTile(
              style: ListTileStyle.list,
              leading: Icon(Icons.label_outline),
              title: Text('Unwanted',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
              onTap: (){},
            ),
            ListTile(
              style: ListTileStyle.list,
              leading: Icon(Icons.add),
              title: Text('Create new',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
              onTap: (){},
            ),
            Row(
              children: [
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.only(left: 57),
                        child: Divider())),
              ],
            ),
            ListTile(
              style: ListTileStyle.list,
              leading: Icon(Icons.settings_outlined),
              title: Text('Settings',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
              onTap: (){},
            ),
            ListTile(
              style: ListTileStyle.list,
              leading: Icon(Icons.feedback_outlined),
              title: Text('Send feedback',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
              onTap: (){},
            ),
            ListTile(
              style: ListTileStyle.list,
              leading: Icon(Icons.help_outline),
              title: Text('Help',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
              onTap: (){},
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 15),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xFFEAF1FB),
              ),
              child: Row(
                children: [
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
                    radius: 22,
                    backgroundImage: NetworkImage(
                      'https://media.licdn.com/dms/image/v2/D5603AQEcKOfN60fsVw/profile-displayphoto-shrink_100_100/B56ZRfdrylHQAU-/0/1736768405103?e=1756339200&v=beta&t=BSqtq41B5Mg1Ym_mNRxSo3PQJjqer5zU8-0m0mg--HY',
                    ), // Use NetworkImage for online image
                  ),
                  SizedBox(width: 2),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

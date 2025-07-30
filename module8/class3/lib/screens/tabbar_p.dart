import 'package:flutter/material.dart';

import 'assignment.dart';
import 'datePicker.dart';
import 'listview.dart';

class Tabpractice extends StatelessWidget {
  const Tabpractice({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tab Bar Test'),
          bottom: TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: 'Home',
                ),
                Tab(
                  icon: Icon(Icons.star),
                  text: 'Favourite',
                ),
                Tab(
                  icon: Icon(Icons.access_time_outlined),
                  text: 'Recent',
                ),
          ],
          ),
        ),
        body: TabBarView(children: [
          Listview(),
          DatePickerScreen(),
          Assignment(),
        ],

        ),
      ),
    );
  }
}

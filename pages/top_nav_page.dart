import 'package:flutter/material.dart';

class TopNavPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Top Nav'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.looks_one)),
              Tab(icon: Icon(Icons.looks_two)),
              Tab(icon: Icon(Icons.looks_3)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('First Tab')),
            Center(child: Text('Second Tab')),
            Center(child: Text('Third Tab')),
          ],
        ),
      ),
    );
  }
}

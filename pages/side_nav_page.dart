import 'package:flutter/material.dart';

class SideNavPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Side Nav Button')),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 120,
              color: Colors.orange,
              alignment: Alignment.center,
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Option 1'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Option 2'),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
      body: Center(child: Text('Main Content')),
    );
  }
}

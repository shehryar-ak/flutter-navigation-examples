import 'package:flutter/material.dart';
import 'pages/bottom_nav_page.dart';
import 'pages/side_nav_page.dart';
import 'pages/top_nav_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigation Assignment',
      theme: ThemeData(primaryColor: Colors.orange),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Different Navigations')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NavButton(
              text: 'Bottom Menu',
              icon: Icons.view_compact,
              page: BottomNavPage(),
            ),
            SizedBox(height: 35),
            NavButton(
              text: 'Side Menu',
              icon: Icons.view_headline,
              page: SideNavPage(),
            ),
            SizedBox(height: 35),
            NavButton(
              text: 'Top Tabs',
              icon: Icons.table_rows,
              page: TopNavPage(),
            ),
          ],
        ),
      ),
    );
  }
}

class NavButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final Widget page;

  NavButton({required this.text, required this.icon, required this.page});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(Colors.white),
        backgroundColor: MaterialStateProperty.all(Colors.deepOrangeAccent),
        minimumSize: MaterialStateProperty.all(Size(double.infinity, 50)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.zero, // This makes the button square
          ),
        ),
      ),
      onPressed:
          () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Icon(icon), SizedBox(width: 8), Text(text)],
      ),
    );
  }
}

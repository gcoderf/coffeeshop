import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:coffeshop/HomePage1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigation Bar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage1(),
    ExplorePage(),
    NotificationsPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: FlashyTabBar(
        selectedIndex: _currentIndex,
        showElevation: true,
        onItemSelected: (index) => setState(() {
          _currentIndex = index;
        }),
        items: [
          FlashyTabBarItem(
            icon: Icon(Icons.event),
            title: Text('Events'),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.search),
            title: Text('Search'),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.highlight),
            title: Text('Highlights'),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.settings),
            title: Text('한국어'),
          ),
        ],
      ),
    );
  }
}

class ExplorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Explore Page'),
    );
  }
}

class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Notifications Page'),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Profile Page'),
    );
  }
}

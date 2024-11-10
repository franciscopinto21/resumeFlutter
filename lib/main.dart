import 'package:flutter/material.dart';
import './screens/layout/header.dart';
import './screens/layout/footer.dart';
import './screens/pages/home_page.dart';
import './screens/pages/resume_page.dart';
import './screens/pages/projects_page.dart';
import './screens/pages/coding_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Resume',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainLayout(),
    );
  }
}

class MainLayout extends StatefulWidget {
  @override
  _MainLayoutState createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  // Set up an index to track which page is displayed
  int _selectedIndex = 0;

  // A list of the pages to navigate between
  final List<Widget> _pages = [
    HomePage(),
    ResumePage(),
    ProjectsPage(),
    CodingPage(),
  ];

  // Method to handle page selection
  void _onSelectPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(onSelectPage: _onSelectPage),
          Expanded(
            child: _pages[_selectedIndex],
          ),
          Footer(),
        ],
      ),
    );
  }
}

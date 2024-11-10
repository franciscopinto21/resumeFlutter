import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final Function(int) onSelectPage;

  Header({required this.onSelectPage});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'My Resume',
            style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              _buildNavButton('Home', 0),
              _buildNavButton('Resume', 1),
              _buildNavButton('Projects', 2),
              _buildNavButton('Coding', 3),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildNavButton(String title, int index) {
    return TextButton(
      onPressed: () => onSelectPage(index),
      child: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

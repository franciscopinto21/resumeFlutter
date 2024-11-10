import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      padding: EdgeInsets.all(16.0),
      child: Center(
        child: Text(
          '© 2023 My Resume',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

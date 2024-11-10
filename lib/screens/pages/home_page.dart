import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Padding(
        padding: EdgeInsets.all(width * 0.05), // 5% of screen width
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(child: Container(color: Colors.red)),
                  SizedBox(width: width * 0.05), // Space between boxes
                  Expanded(child: Container(color: Colors.blue)),
                ],
              ),
            ),
            Text(
              'Responsive Footer',
              style: TextStyle(fontSize: 20 * MediaQuery.textScaleFactorOf(context)),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(icon: const Icon(Icons.home), onPressed: () {}),
            IconButton(icon: const Icon(Icons.info), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}

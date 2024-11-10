import 'package:flutter/material.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key}); // Use super to pass the key to the parent class

  @override
  Widget build(BuildContext context) {
    return Center(
      child: const Text( // Use const here for better performance
        'Projects Page2',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

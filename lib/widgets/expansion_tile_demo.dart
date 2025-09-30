import 'package:flutter/material.dart';

class ExpansionTileDemo extends StatelessWidget {
  const ExpansionTileDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        ExpansionTile(
          title: Text("Section 1"),
          subtitle: Text("Tap to expand"),
          children: [
            ListTile(title: Text("Item 1")),
            ListTile(title: Text("Item 2")),
          ],
        ),
        ExpansionTile(
          title: Text("Section 2"),
          subtitle: Text("Tap to expand"),
          children: [
            ListTile(title: Text("Item A")),
            ListTile(title: Text("Item B")),
          ],
        ),
      ],
    );
  }
}

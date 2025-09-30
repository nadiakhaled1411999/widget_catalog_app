import 'package:flutter/material.dart';

class NotificationListenerDemo extends StatefulWidget {
  const NotificationListenerDemo({super.key});

  @override
  State<NotificationListenerDemo> createState() => _NotificationListenerDemoState();
}

class _NotificationListenerDemoState extends State<NotificationListenerDemo> {
  double _scrollPosition = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          color: Colors.blue,
          width: double.infinity,
          child: Text(
            "Scroll Position: ${_scrollPosition.toStringAsFixed(1)}",
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
        Expanded(
          child: NotificationListener<ScrollNotification>(
            onNotification: (notification) {
              setState(() {
                _scrollPosition = notification.metrics.pixels;
              });
              return true;
            },
            child: ListView.builder(
              itemCount: 30,
              itemBuilder: (context, index) => ListTile(
                leading: const Icon(Icons.star),
                title: Text("Item $index"),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

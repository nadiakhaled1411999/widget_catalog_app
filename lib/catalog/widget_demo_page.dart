import 'package:flutter/material.dart';

class WidgetDemoPage extends StatelessWidget {
  final String widgetName;
  final Widget widgetDemo;

  const WidgetDemoPage({
    super.key,
    required this.widgetName,
    required this.widgetDemo,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widgetName)),
      body: Center(child: widgetDemo),
    );
  }
}

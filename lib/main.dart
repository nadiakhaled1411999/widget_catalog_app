import 'package:flutter/material.dart';
import 'catalog/widget_catalog_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widget Catalog',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const WidgetCatalogPage(),
    );
  }
}

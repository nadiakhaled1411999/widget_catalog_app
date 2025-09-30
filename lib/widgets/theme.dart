import 'package:flutter/material.dart';

class ThemeDemo extends StatefulWidget {
  const ThemeDemo({super.key});

  @override
  State<ThemeDemo> createState() => _ThemeDemoState();
}

class _ThemeDemoState extends State<ThemeDemo> {
  bool _isDark = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Theme(
        data: _isDark
            ? ThemeData.dark().copyWith(
                primaryColor: Colors.orange,
                textTheme: const TextTheme(
                  bodyMedium: TextStyle(color: Colors.orange, fontSize: 20),
                ),
              )
            : ThemeData.light().copyWith(
                primaryColor: Colors.blue,
                textTheme: const TextTheme(
                  bodyMedium: TextStyle(color: Colors.blue, fontSize: 20),
                ),
              ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello Theme!", style: Theme.of(context).textTheme.bodyMedium),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isDark = !_isDark;
                });
              },
              child: const Text("Toggle Theme"),
            ),
          ],
        ),
      ),
    );
  }
}

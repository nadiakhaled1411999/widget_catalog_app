import 'package:flutter/material.dart';

class HeroDemo extends StatelessWidget {
  const HeroDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Hero(
        tag: 'hero-demo',
        child: Image.network(
          "https://picsum.photos/200/200",
          width: 100,
          height: 100,
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const HeroDetailPage(),
          ),
        );
      },
    );
  }
}

class HeroDetailPage extends StatelessWidget {
  const HeroDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(title: const Text("Hero Detail")),
      body: Center(
        child: Hero(
          tag: 'hero-demo',
          child: Image.network(
            "https://picsum.photos/200/200",
            width: 300,
            height: 300,
          ),
        ),
      ),
    );
  }
}

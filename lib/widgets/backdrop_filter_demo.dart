import 'dart:ui';
import 'package:flutter/material.dart';

class BackdropFilterDemo extends StatelessWidget {
  const BackdropFilterDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        // خلفية صورة
        Image.network(
          "https://picsum.photos/600/800",
          fit: BoxFit.cover,
        ),
        // الكارد اللي عليه التأثير
        Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                width: 250,
                height: 150,
                alignment: Alignment.center,
                color: Colors.white.withOpacity(0.2),
                child: const Text(
                  "Frosted Glass Effect",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

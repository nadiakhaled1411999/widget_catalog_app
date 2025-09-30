import 'package:flutter/material.dart';

class ShaderMaskDemo extends StatelessWidget {
  const ShaderMaskDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ShaderMask(
        shaderCallback: (bounds) => const LinearGradient(
          colors: [Colors.blue, Colors.purple, Colors.red, Colors.orange],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ).createShader(bounds),
        child: const Text(
          "ShaderMask Widget",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.white, // اللون الأساسي بيتغير بالـ Shader
          ),
        ),
      ),
    );
  }
}

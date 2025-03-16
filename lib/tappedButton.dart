import 'package:flutter/material.dart';

class TappedButton extends StatelessWidget {
  const TappedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Tap-Tap');
      },
      child: Container(
        height: 50,
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.blueGrey,
        ),
        child: const Center(child: Text("Tap-Tap"),),
      ),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(home: Scaffold(body: Center(child: TappedButton()))),
  );
}

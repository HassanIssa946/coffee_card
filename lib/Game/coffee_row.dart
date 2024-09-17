import 'package:flutter/material.dart';

class CoffeeOptionWidget extends StatelessWidget {
  final String inText;
  final String imagePath;
  final int itemCount;
  final VoidCallback onIncrement;

  const CoffeeOptionWidget({
    Key? key,
    required this.inText,
    required this.imagePath,
    required this.itemCount,
    required this.onIncrement,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          inText,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        for (int i = 0; i < itemCount; i++)
          Image.asset(
            imagePath,
            width: 50,
            height: 50,
            color: Colors.brown[100],
            colorBlendMode: BlendMode.multiply,
          ),
        const SizedBox(
          width: 100,
          height: 30,
        ),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.brown[100],
          ),
          onPressed: onIncrement,
          child: const Text(
            '+',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.brown),
          ),
        ),
      ],
    );
  }
}

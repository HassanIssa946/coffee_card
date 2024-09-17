import 'package:flutter/material.dart';

class SubmitButton extends StatefulWidget {
  const SubmitButton({
    Key? key,
    required this.strength,
    required this.sugar,
    required this.Milk,
    required this.milkFoam,
    required this.caramel,
    required this.ice,
    required this.chocolate,
    required this.cream,
  }) : super(key: key);

  final int strength;
  final int sugar;
  final int Milk;
  final int milkFoam;
  final int caramel;
  final int ice;
  final int chocolate;
  final int cream;

  @override
  _SubmitButtonState createState() => _SubmitButtonState();
}

class _SubmitButtonState extends State<SubmitButton> {
  String drinkSuggestion = '';

  void submitOrder() {
    setState(() {
      drinkSuggestion = "";

      if (widget.Milk == 1 && widget.sugar > 0 && widget.caramel == 1) {
        if (widget.ice == 1) {
          drinkSuggestion = "Caramel Iced Coffee";
        } else {
          drinkSuggestion = "Latte";
        }
      } else if (widget.strength == 3 && widget.chocolate == 1) {
        drinkSuggestion = "Mocha";
      } else if (widget.ice == 1 && widget.Milk == 1) {
        drinkSuggestion = "Iced Latte";
      } else if (widget.cream == 1 && widget.sugar == 0) {
        drinkSuggestion = "Cappuccino";
      } else if (widget.strength == 2 && widget.sugar == 2) {
        drinkSuggestion = "Americano";
      } else if (widget.chocolate == 1 && widget.sugar > 1) {
        drinkSuggestion = "Hot Chocolate";
      } else if (widget.Milk == 1 && widget.ice == 1) {
        drinkSuggestion = "Iced Mocha";
      } else if (widget.strength == 3) {
        drinkSuggestion = "Espresso";
      }
    });
  }

  void resetOrder() {
    setState(() {
      drinkSuggestion = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: submitOrder,
              child: const Text("Submit Order"),
            ),
            const SizedBox(width: 20),
            ElevatedButton(
              onPressed: resetOrder,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent, // Reset button style
              ),
              child: const Text("Reset"),
            ),
          ],
        ),
        const SizedBox(height: 20),
        if (drinkSuggestion.isNotEmpty) ...[
          Text(
            "Suggested Drink: $drinkSuggestion",
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ],
    );
  }
}

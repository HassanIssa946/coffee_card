import 'package:coffee_card/Game/subbmitButton.dart';
import 'package:flutter/material.dart';
import 'package:coffee_card/Game/coffee_row.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int strength = 0;
  int sugar = 0;
  int Milk = 0;
  int milkFoam = 0;
  int caramel = 0;
  int ice = 0;
  int chocolate = 0;
  int cream = 0;
  void addStrength() {
    setState(() {
      strength = strength < 3 ? strength + 1 : 0;
    });
  }

  void addSugar() {
    setState(() {
      sugar = sugar < 3 ? sugar + 1 : 0;
    });
  }

  void addMilk() {
    setState(() {
      Milk = Milk == 1 ? 0 : 1;
    });
  }

  void addCaramel() {
    setState(() {
      caramel = caramel == 1 ? 0 : 1;
    });
  }

  void addMilkFoam() {
    setState(() {
      milkFoam = milkFoam == 1 ? 0 : 1;
    });
  }

  void addIce() {
    setState(() {
      ice = ice == 1 ? 0 : 1;
    });
  }

  void addChocolate() {
    setState(() {
      chocolate = chocolate == 1 ? 0 : 1;
    });
  }

  void addCream() {
    setState(() {
      cream = cream == 1 ? 0 : 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CoffeeOptionWidget(
          inText: 'Strength:',
          imagePath: 'assets/img/coffee_bean.jpg',
          itemCount: strength,
          onIncrement: addStrength,
        ),
        CoffeeOptionWidget(
          inText: 'Sugars:',
          imagePath: 'assets/img/sugar_cube.jpeg',
          itemCount: sugar,
          onIncrement: addSugar,
        ),
        CoffeeOptionWidget(
          inText: 'Milk:',
          imagePath: 'assets/img/milk.png',
          itemCount: Milk,
          onIncrement: addMilk,
        ),
        CoffeeOptionWidget(
          inText: 'Caramel:',
          imagePath: 'assets/img/caramel.png',
          itemCount: caramel,
          onIncrement: addCaramel,
        ),
        CoffeeOptionWidget(
          inText: 'Milk Foam:',
          imagePath: 'assets/img/milkfff.png',
          itemCount: milkFoam,
          onIncrement: addMilkFoam,
        ),
        CoffeeOptionWidget(
          inText: 'Ice:',
          imagePath: 'assets/img/ice.png',
          itemCount: ice,
          onIncrement: addIce,
        ),
        CoffeeOptionWidget(
          inText: 'Chocolate:',
          imagePath: 'assets/img/chocolate.png',
          itemCount: chocolate,
          onIncrement: addChocolate,
        ),
        CoffeeOptionWidget(
          inText: 'Cream:',
          imagePath: 'assets/img/cream.png',
          itemCount: cream,
          onIncrement: addCream,
        ),
        const SizedBox(
          height: 30,
        ),
        SubmitButton(
          strength: strength,
          sugar: sugar,
          Milk: Milk,
          milkFoam: milkFoam,
          caramel: caramel,
          ice: ice,
          chocolate: chocolate,
          cream: cream,
        ),
      ],
    );
  }
}

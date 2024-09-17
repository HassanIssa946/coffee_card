import 'package:coffee_card/menu/Breakfast.dart';
import 'package:coffee_card/menu/Colddrinks.dart';
import 'package:coffee_card/menu/Dessert.dart';
import 'package:coffee_card/menu/Hotdrinks.dart';
import "package:coffee_card/Home/home_buttons.dart";
import "package:coffee_card/Game/CoffeeMaker.dart";
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink[900],
          title: const Text(
            'Mr. Coffee',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.pink[50]!, Colors.white],
                begin: Alignment.centerLeft,
                end: Alignment.bottomRight),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              StyledButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Hotdrinks(),
                      ));
                  print('Hot Drinks Button Pressed');
                },
                photo: r'assets\img\Hotdrinks.png',
                title: 'Hot Drinks',
              ),
              StyledButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Colddrinks(),
                      ));
                  print('Cold Drinks Button Pressed');
                },
                photo: r'assets\img\Colddrinks.png',
                title: 'Cold Drinks',
              ),
              StyledButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Dessert()));
                  print('Dessert Button Pressed');
                },
                photo: r'assets\img\Dessert.png',
                title: 'Dessert',
              ),
              StyledButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Breakfast()));
                  print('breakfast Button Pressed');
                },
                photo: r'assets\img\Breakfast.png',
                title: 'Breakfast',
              ),
              StyledButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Coffeemaker()));
                  print('Hot Drinks Button Pressed');
                },
                photo: r'assets\img\CoffeMaker.png',
                title: 'Make your Drink',
              ),
            ],
          ),
        ));
  }
}

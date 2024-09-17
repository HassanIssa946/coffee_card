import 'package:coffee_card/Home/home.dart';
import "package:coffee_card/menu/Menucontainer.dart";
import 'package:flutter/material.dart';

class Colddrinks extends StatelessWidget {
  const Colddrinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[900],
        title: const Text(
          'Hot Drinks ',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
              icon: const Icon(Icons.home))
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            MenuList(
              title: 'Iced Coffees',
              items: ['Iced Latte', 'Iced Mocha', 'Caramel Iced Coffee'],
              prices: ['4.00\$', '4.50\$', '4.00\$'],
            ),
            MenuList(
              title: 'Bubble Tea',
              items: ['Classic Bubble Tea', 'Strawberry Tea', 'Mango Tea'],
              prices: ['4.50\$', '4.50\$', '4.50\$'],
            ),
            MenuList(
              title: 'Smoothies',
              items: [
                'Strawberry Banana',
                'Mango Passion Fruit',
                'Green Smoothie'
              ],
              prices: ['4.00\$', '4.50\$', '4.50\$'],
            ),
            MenuList(
              title: 'Milkshakes',
              items: [
                'Vanilla Milkshake',
                'Chocolate Milkshake',
                'Strawberry Milkshake'
              ],
              prices: ['4.00\$', '4.00\$', '4.00\$'],
            ),
            MenuList(
              title: 'Juices',
              items: [
                'Orange Juice',
                'Apple Juice',
                'Grapefruit Juice',
                'Carrot Juice'
              ],
              prices: ['2.50\$', '2.50\$', '2.50\$', '2.50\$'],
            ),
            MenuList(
              title: 'Specialty Drinks',
              items: ['Mojito', 'Margarita', 'Pina Colada'],
              prices: ['5.00\$', '5.00\$', '5.00\$'],
            ),
          ],
        ),
      ),
    );
  }
}

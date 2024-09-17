import 'package:coffee_card/Home/home.dart';
import "package:coffee_card/menu/Menucontainer.dart";
import 'package:flutter/material.dart';

class Breakfast extends StatelessWidget {
  const Breakfast({super.key});

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
        child: Column(children: [
          MenuList(
            title: 'Croissants',
            items: [
              'Butter Croissant',
              'Chocolate Croissant',
              'Almond Croissant',
              'Zaatar Croissant'
            ],
            prices: ['3.00\$', '3.50\$', '3.50\$', '4.00\$'],
          ),
          MenuList(
            title: 'Manakish',
            items: [
              'Za’atar Manakish',
              'Cheese Manakish',
              'Beef Manakish',
              'Spinach Manakish',
              'Kishik Manakish'
            ],
            prices: ['4.00\$', '4.50\$', '5.00\$', '4.50\$', '4.00\$'],
          ),
          MenuList(
            title: 'other',
            items: [
              'mini pizza',
              'Lahmb3ajin',
              'ftayir chease',
              'ftayir mhamara',
            ],
            prices: ['4.00\$', '4.50\$', '5.00\$', '4.50\$'],
          )
        ]),
      ),
    );
  }
}

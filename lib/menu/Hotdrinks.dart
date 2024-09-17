import 'package:coffee_card/Home/home.dart';
import "package:coffee_card/menu/Menucontainer.dart";
import 'package:flutter/material.dart';

class Hotdrinks extends StatelessWidget {
  const Hotdrinks({
    super.key,
  });

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
              title: 'Coffee',
              items: ['Espresso', 'Cappuccino', 'Latte', 'Mocha', 'Americano'],
              prices: ['3.00\$', '4.00\$', '4.50\$', '5.00\$', '3.50\$'],
            ),
            MenuList(
              title: 'Tea',
              items: [
                'Tea',
                'Zhourat',
                'Yansoon',
                'Green Tea',
                'Nana Tea',
                'Ward Tea',
                'Qirfah Tea',
                'Any Tea Pot for 4'
              ],
              prices: [
                '2.00\$',
                '2.5\$',
                '2.5\$',
                '2.5\$',
                '2.5\$',
                '2.5\$',
                '2.5\$',
                '6\$'
              ],
            ),
            MenuList(
              title: 'special',
              items: ['Sahlab', 'Hot chocolate', 'Chai Latte', 'Spiced Cider'],
              prices: ['5.00\$', '5.00\$', '5.00\$', '5.00\$'],
            ),
          ],
        ),
      ),
    );
  }
}

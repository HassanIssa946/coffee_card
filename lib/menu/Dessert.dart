import 'package:coffee_card/Home/home.dart';
import "package:coffee_card/menu/Menucontainer.dart";
import 'package:flutter/material.dart';

class Dessert extends StatelessWidget {
  const Dessert({super.key});

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
              title: 'Desserts',
              items: [
                'Chocolate Cake',
                'Vanilla Cake',
                'Red Velvet Cake',
                'Cheesecake',
                'Tiramisu'
              ],
              prices: ['5.00\$', '5.00\$', '5.50\$', '6.00\$', '6.50\$'],
            ),
            MenuList(
              title: 'Ice Cream and Frozen Treats',
              items: [
                'Ice Cream Sundaes',
                'Ice Cream Cones',
                'Frozen Yogurt',
                'Sorbet',
                'Gelato'
              ],
              prices: ['4.00\$', '3.50\$', '3.50\$', '3.50\$', '4.00\$'],
            ),
            MenuList(
              title: 'Other Sweets',
              items: [
                'Brownies',
                'Chocolate Chip Cookies',
                'Oatmeal Raisin Cookies',
                'Snickerdoodle Cookies',
                'Pudding'
              ],
              prices: ['2.50\$', '2.50\$', '2.50\$', '2.50\$', '3.00\$'],
            )
          ],
        ),
      ),
    );
  }
}

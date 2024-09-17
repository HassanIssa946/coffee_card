import 'package:flutter/material.dart';

class MenuList extends StatelessWidget {
  const MenuList({
    super.key,
    required this.title,
    required this.prices,
    required this.items,
  });
  final String title;
  final List<String> items;
  final List<String> prices;

  @override
  Widget build(BuildContext context) {
    if (items.length != prices.length) {
      print('nb of items should be equal to nb of prices');
    }
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.pink[100]!, Colors.white],
            begin: Alignment.centerLeft,
            end: Alignment.bottomRight),
      ),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
                fontFamily: 'PlaywriteHR',
                fontSize: 36,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.pink[600]),
          ),
          const SizedBox(
            height: 16,
          ),
          ...List.generate(items.length, (index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    items[index],
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.grey[500]),
                  ),
                  const SizedBox(width: 200.0),
                  Text(prices[index],
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[500])),
                ],
              ),
            );
          })
        ],
      ),
    );
  }
}

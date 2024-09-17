import 'package:coffee_card/Game/coffee_prefs.dart';
import 'package:coffee_card/Home/home.dart';
import 'package:flutter/material.dart';

class Coffeemaker extends StatelessWidget {
  const Coffeemaker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[900],
        title: const Text(
          'Make your own coffee',
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
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.pink[100]!, Colors.white],
                    begin: Alignment.centerLeft,
                    end: Alignment.bottomRight),
              ),
              padding: const EdgeInsets.all(30),
              child: const CoffeePrefs(),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'coffee_Card.dart';

class coffee extends StatelessWidget {
  const coffee({super.key});

  @override
  Widget build(BuildContext context) {
    String s = " 50.00";
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          title: const Center(
            child: Text(
              'My reviews ',
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.black,
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              coffeeCard(s: s),
              coffeeCard(s: s),
              coffeeCard(s: s),
              coffeeCard(s: s),
            ],
          ),
        ),
      ),
    );
  }
}

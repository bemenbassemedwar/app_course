import 'package:flutter/material.dart';

class coffeeCard extends StatelessWidget {
  const coffeeCard({
    super.key,
    required this.s,
  });

  final String s;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Image.network(
                'https://wakefitdev.gumlet.io/img/coffee-tables/praline/1.jpg?w=750',
                height: 150,
                width: 150,
              ),
            ),
            Column(
              children: [
                const Text(
                  'Coffee table',
                  style: TextStyle(),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  '\$$s',
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  stars(),
                  stars(),
                  stars(),
                  stars(),
                  stars(),
                ],
              ),
              const Text('20/03/2020')
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  'Nice Furniture with good delivery. The delivery time is very fast. Then products look like exactly the picture in the app. Besides, color is also the same and quality is very good despite very cheap price',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 4,
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Icon stars() {
    return const Icon(
      Icons.star,
      color: Color.fromARGB(255, 214, 194, 14),
    );
  }
}

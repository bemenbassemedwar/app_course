import 'package:flutter/material.dart';

class callcard extends StatelessWidget {
  const callcard({super.key, required this.number});
  final String number;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(169, 160, 156, 156)),
          child: Row(
            children: [const Icon(Icons.phone), Text(number)],
          ),
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class TileItem extends StatelessWidget {
  const TileItem({
    super.key,
    required this.icon,
    required this.text,
  });
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            decoration:
                const BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Icon(
                icon,
                color: Colors.white,
              ),
            )),
        const SizedBox(
          width: 5,
        ),
        Text(text)
      ],
    );
  }
}

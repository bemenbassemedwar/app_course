import 'package:flutter/material.dart';

class button extends StatelessWidget {
  const button({
    super.key,
    required this.color,
    required this.text,
  });
  final Color color;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          style: ButtonStyle(
              padding: const MaterialStatePropertyAll(EdgeInsets.all(12)),
              backgroundColor: MaterialStateProperty.all(color),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)))),
          onPressed: () {},
          child: Text(text)),
    );
  }
}

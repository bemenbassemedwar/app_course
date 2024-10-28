import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'callcard.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Dr Ahmed Ali',
          style: TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 1, 92, 167),
              fontWeight: FontWeight.bold),
        ),
        Text(
          'Dentist',
          style: TextStyle(fontSize: 16),
        ),
        Row(
          children: [
            Icon(
              Icons.star,
              color: Color.fromARGB(255, 214, 194, 14),
            ),
            Text('3')
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            callcard(
              number: '1',
            ),
            SizedBox(
              width: 10,
            ),
            callcard(number: '2')
          ],
        ),
      ],
    );
  }
}

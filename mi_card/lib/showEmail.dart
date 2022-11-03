import 'package:flutter/material.dart';
import 'constants.dart';

class ShowEmail extends StatelessWidget {
  const ShowEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text(
            '$email',
            style: TextStyle(
              fontSize: 50,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

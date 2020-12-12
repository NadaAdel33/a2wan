import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset('assets/images/1HOME.jpg'),
      height: MediaQuery.of(context).size.height,
    );
  }
}

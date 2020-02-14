import 'package:flutter/material.dart';

class ColorOption extends StatelessWidget {
  final rgb;
  final Function optionChoosenHandler;

  ColorOption(this.rgb, this.optionChoosenHandler);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: GestureDetector(
        onTap: () => optionChoosenHandler(rgb['r'], rgb['g'], rgb['b']),
        child: Container(
          margin: EdgeInsets.all(10),
          width: 150,
          height: 150,
          color: Color.fromRGBO(rgb['r'], rgb['g'], rgb['b'], 1),
        ),
      ),
    );
  }
}

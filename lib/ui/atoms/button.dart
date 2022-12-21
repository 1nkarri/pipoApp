import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

  final String text;
  final Color color;
  final Function onPressed;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,

    this.color = Colors.blue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // Boton con texto
    return TextButton(
      style: TextButton.styleFrom(
        primary: color,
      ),
      onPressed: () => onPressed(),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text( text ),
      )
    );
  }
}
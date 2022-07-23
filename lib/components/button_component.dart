import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final List<Color> colors;
  final Function() onPressed;
  final Color borderColor;
  const CustomButton({
    Key? key,
    required this.text,
    required this.colors,
    required this.onPressed,
    this.borderColor = Colors.transparent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: 52,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: colors,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
            border: Border.all(color: borderColor)),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CircleStack extends StatelessWidget {
  final double width;
  final double height;

  final Alignment alignment;
  const CircleStack({
    Key? key,
    required this.width,
    required this.height,
    required this.alignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
          color: Color(0xff577482),
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}

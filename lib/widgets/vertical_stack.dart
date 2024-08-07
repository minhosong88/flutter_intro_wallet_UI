import 'package:flutter/material.dart';

class VerticalStack extends StatelessWidget {
  final double dy;
  final int order;
  final Widget customCard;

  const VerticalStack({
    super.key,
    required this.dy,
    required this.order,
    required this.customCard,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, -dy * order),
      child: customCard,
    );
  }
}

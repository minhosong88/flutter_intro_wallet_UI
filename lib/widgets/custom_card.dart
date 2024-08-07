import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Color backgroundColor;
  final String currency, amount, abbrevCurrency;
  final IconData icon;
  final bool isInverted;
  final double iconSize;

  const CustomCard({
    super.key,
    required this.backgroundColor,
    required this.currency,
    required this.amount,
    required this.abbrevCurrency,
    required this.icon,
    required this.isInverted,
    required this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: FoldedCornerClipper(),
      child: Container(
        width: 400,
        height: 200,
        color: isInverted ? Colors.white : backgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    currency,
                    style: TextStyle(
                      color: isInverted ? backgroundColor : Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                          color: isInverted ? backgroundColor : Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        abbrevCurrency,
                        style: TextStyle(
                          color: isInverted
                              ? backgroundColor
                              : Colors.white.withOpacity(0.8),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Transform.scale(
                scale: 2.5,
                child: Transform.translate(
                  offset: const Offset(
                    5,
                    5,
                  ),
                  child: Icon(
                    icon,
                    color: isInverted ? backgroundColor : Colors.white,
                    size: iconSize,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FoldedCornerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double radius = 20.0;
    double foldSize = 50.0;
    double foldRadius = 15.0;

    Path path = Path()
      ..moveTo(0, radius)
      ..arcToPoint(
        Offset(radius, 0),
        radius: Radius.circular(radius),
      )
      ..lineTo(size.width - foldSize - foldRadius, 0)
      // Folded corner Starts
      ..arcToPoint(
        Offset(size.width - foldSize + 15, 15),
        radius: Radius.circular(foldRadius + 30),
      )
      ..lineTo(size.width - 10, foldSize - 10)
      ..arcToPoint(
        Offset(size.width, foldSize + 15),
        radius: Radius.circular(foldRadius + 20),
      )
      ..lineTo(size.width, size.height - radius)
      ..arcToPoint(
        Offset(size.width - radius, size.height),
        radius: Radius.circular(radius),
      )
      ..lineTo(radius, size.height)
      ..arcToPoint(
        Offset(0, size.height - radius),
        radius: Radius.circular(radius),
      )
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
